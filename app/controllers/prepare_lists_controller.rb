class PrepareListsController < ApplicationController
  def index
    @prepared_ingredients = current_user.prepared_ingredients
  end

  def create
  	@ingredient_ids = params[:ingredient_ids]
    @ingredient_ids.each do |id|
    	PrepareList.create(:user_id => current_user.id, :ingredient_id => id)
    end
	  render :json => true
  end
end
