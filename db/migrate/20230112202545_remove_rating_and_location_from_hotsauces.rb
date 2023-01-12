class RemoveRatingAndLocationFromHotsauces < ActiveRecord::Migration[7.0]
  def change
    remove_column :hotsauces, :rating, :integer
    remove_column :hotsauces, :location, :string
  end
end
