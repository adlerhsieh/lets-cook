class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :hold_place
      t.datetime :hold_time
      t.datetime :add_dish_dealine
      t.integer :admin_id

      t.timestamps null: false
    end
  end
end
