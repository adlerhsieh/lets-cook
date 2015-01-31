class IngredientsController < ApplicationController
	def create
		Ingredient.create()
	end

	def ingredient_params
		params.permit(:ingredient).permit(:name, :amount, :dish_id)
	end
end
