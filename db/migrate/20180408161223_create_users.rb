class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      # t.integer :user_id au
      t.string :name
      t.string :email
      t.string :phone
      t.string :passport

      t.integer :role, default:0
      # 1 - admin
      # 0 - user
      t.boolean :isdel, default:false
      # false-chua xoa
      # true- da xoa
      t.timestamps
    end
  end
end
