class IngredientsController < ApplicationController
	def ingredient_params
		params.permit(:ingredient).permit(:name, :amount, :dish_id)
	end
end
