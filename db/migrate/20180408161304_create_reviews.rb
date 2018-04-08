class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key:true
      t.integer :rate
      t.timestamp :day_created
      t.string :content

      t.timestamps
    end
  end
end
