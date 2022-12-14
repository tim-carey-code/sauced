class AddUsernameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string, null: false, unique: true
  end
end
