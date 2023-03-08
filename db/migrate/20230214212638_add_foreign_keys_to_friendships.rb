class AddForeignKeysToFriendships < ActiveRecord::Migration[7.0]
  def change
    add_reference :friendships, :friend, index: true, foreign_key: { to_table: :users }
    add_reference :friendships, :user, index: true, foreign_key: { to_table: :users }
  end
end
