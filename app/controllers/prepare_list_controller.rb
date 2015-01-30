class PrepareListController < ApplicationController
  def index
    @prepared_ingredients = current_user.prepared_ingredients
  end
end
