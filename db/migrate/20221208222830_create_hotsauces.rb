class CreateHotsauces < ActiveRecord::Migration[7.0]
  def change
    create_table :hotsauces do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.text :review
      t.string :location

      t.timestamps
    end
  end
end
