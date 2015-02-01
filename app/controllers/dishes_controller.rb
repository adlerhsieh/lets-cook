class DishesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def create
    @dish = Dish.create!(dish_params.except(:link))
    array = []
    Dish.where(:name => dish_params[:name]).first.ingredients.each do |i|
      hash = i.serializable_hash.except("id", "created_at", "updated_at")
      hash["dish_id"] = @dish[:id]
      new_i = Ingredient.create!(hash)
      array << new_i
    end
    render :json => @dish.serializable_hash.merge(:ingredients => array)
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
  end

  def search
    @dishes = Dish.where(['name LIKE ?', "%#{params[:file]}%"]).where(:user_id => nil)
    dish_names = @dishes.map {|dish| dish[:name] }
    @ingredients = Ingredient.where(['name LIKE ?', "%#{params[:file]}%"])
    if @ingredients.size > 0
      @ingredients.each do |ingredient|
        unless dish_names.include? ingredient.dish[:name]
          @dishes.push(ingredient.dish)
          dish_names.push(ingredient.dish[:name])
        end
      end 
    end
    render :json => @dishes
  end

  private

  def dish_params
    params.require(:dish).permit(:user_id, :event_id, :name, :lg_pic_link, :link)
  end
end
