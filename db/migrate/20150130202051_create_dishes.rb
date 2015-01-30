class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :name
      t.string :sm_pic_link
      t.string :lg_pic_link

      t.timestamps null: false
    end
  end
end
