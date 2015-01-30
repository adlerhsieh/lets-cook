class DishController < ApplicationController
  # def create
    
  # end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
  end

  def search
    @dishes = Dish.includes(:ingredients)
                  .where("name = ? or ingredients.name = ?", "%#{params[:file]}%", "%#{params[:file]}%")
                  .references(:ingredients)
  end
end
