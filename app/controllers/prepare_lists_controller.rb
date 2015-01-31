class PrepareListsController < ApplicationController
  def index
    @prepared_ingredients = current_user.prepared_ingredients
  end

  def user_prepared_list
  	user = User.find(params[:id])
  	render :json => user.prepared_ingredients
  end

  def create
  	@ingredient_id = params[:ingredient_id]
	PrepareList.create(:user_id => current_user.id, :ingredient_id => @ingredient_id)
	render :json => true	
  end
end
