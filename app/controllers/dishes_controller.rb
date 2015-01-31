class DishesController < ApplicationController
  def create
    @dish = Dish.new(dish_params)
    @ingredients = Dish.where(:user_id => nil).find_by_name(@dish[:name]).ingredients.all
    @ingredients.each do |ingredient|
      hash = ingredient.serializable_hash.except("id", "created_at", "updated_at")
      Ingredient.create(hash)
    end
    render :json => true
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
  end

  def search
    @dishes = Dish.includes(:ingredients)
                  .where("name = ? or ingredients.name = ?", "%#{params[:file]}%", "%#{params[:file]}%")
                  .references(:ingredients)
  end

  private

    def dish_params
      params.require(:dish).permit(:user_id, :event_id, :name, :lg_pic_link)
    end
end