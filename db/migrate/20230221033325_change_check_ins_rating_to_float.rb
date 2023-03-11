class ChangeCheckInsRatingToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :checkins, :rating, :float
  end
end
