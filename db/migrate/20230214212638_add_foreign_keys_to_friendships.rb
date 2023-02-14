class AddForeignKeysToFriendships < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :friendships, :users, column: :friend_id
    add_foreign_key :friendships, :users, column: :user_id
  end
end
