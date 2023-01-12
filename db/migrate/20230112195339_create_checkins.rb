class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|
      t.integer :user_id, null: false
      t.integer :hotsauce_id, null: false
      t.integer :rating, null: false
      t.string :location

      t.timestamps
    end
  end
end
