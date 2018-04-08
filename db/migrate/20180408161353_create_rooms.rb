class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :content
      t.boolean :status, default: true
      # true - chua co nguoi thue == not busy
      t.integer :price
      t.integer :type

      t.timestamps
    end
  end
end
