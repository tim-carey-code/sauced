class AddCategoriesToSauces < ActiveRecord::Migration[7.0]
  def change
    add_column :hotsauces, :category, :string, null: false
  end
end
