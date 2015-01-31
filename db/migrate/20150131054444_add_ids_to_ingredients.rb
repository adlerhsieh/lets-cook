class AddIdsToIngredients < ActiveRecord::Migration
  def change
  	rename_column :prepare_lists, :ingredient, :ingredient_id
  end
end
