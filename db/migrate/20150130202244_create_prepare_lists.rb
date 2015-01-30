class CreatePrepareLists < ActiveRecord::Migration
  def change
    create_table :prepare_lists do |t|
      t.integer :user_id
      t.integer :ingredient

      t.timestamps null: false
    end
  end
end
