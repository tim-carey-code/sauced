class RemoveReviewFromHotsauces < ActiveRecord::Migration[7.0]
  def change
    remove_column :hotsauces, :review, :text
  end
end
