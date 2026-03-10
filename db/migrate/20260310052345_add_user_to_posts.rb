class AddUserToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :user_id, :bigint
    add_index :posts, :user_id
    add_foreign_key :posts, :users
  end
end
