class PrepareListsController < ApplicationController
  def index
    @prepared_ingredients = current_user.prepared_ingredients
  end

  # def user_prepared_list
  # 	user = User.find(params[:id])
  # 	render :json => user.prepared_ingredients
  # end

  def create
    puts params
  	@ingredient_ids = params[:ingredient_ids]
    @ingredient_ids.each do |id|
    	PrepareList.create(:user_id => current_user.id, :ingredient_id => id)
    end
	  render :json => true
  end
end
