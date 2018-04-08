class CreateRoomCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :room_categories do |t|
      t.integer :room_id
      t.integer :category_id

      t.timestamps
    end
    add_index :room_categories, :room_id
    add_index :room_categories, :category_id
    add_index :room_categories, [:room_id, :category_id], unique: true
  end
end
