class AddUserDescriptionToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_description, :string
  end
end
