class AddEventIdToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :event_id, :integer
  end
end
