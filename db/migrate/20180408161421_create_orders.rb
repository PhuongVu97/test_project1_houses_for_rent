class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :dayin
      t.datetime :dayout
      t.datetime :daycreate

      t.references :room, foreign_key: true
      t.references :user, foreign_key:true

      t.integer :paid

      t.timestamps
    end
  end
end
