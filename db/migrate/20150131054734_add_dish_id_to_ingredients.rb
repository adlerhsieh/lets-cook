class AddDishIdToIngredients < ActiveRecord::Migration
  
  def change
    add_column :ingredients, :dish_id, :integer
    add_index :ingredients, :dish_id
  end

end
