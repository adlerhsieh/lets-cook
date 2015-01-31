class IngredientsController < ApplicationController
	def create
		@ingredient = Ingredient.create(ingredient_params)
		PrepareList.create(:user_id => current_user.id, :ingredient_id => @ingredient_id)
	end

	def ingredient_params
		params.permit(:ingredient).permit(:name, :amount, :dish_id)
	end
end
