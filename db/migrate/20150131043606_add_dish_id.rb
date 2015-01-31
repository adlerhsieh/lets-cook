class AddDishId < ActiveRecord::Migration
  def change
  	add_column :ingredients, :dish_id, :integer
  end
end
