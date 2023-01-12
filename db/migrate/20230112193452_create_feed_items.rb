class CreateFeedItems < ActiveRecord::Migration[7.0]
  def change
    create_table :feed_items do |t|
      t.integer :user_id, null: false
      t.integer :feedable_id, null: false
      t.string :feedable_type, null: false

      t.timestamps
    end
  end
end
