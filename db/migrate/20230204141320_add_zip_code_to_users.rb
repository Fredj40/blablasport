class AddZipCodeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :zip_code, :integer
  end
end
