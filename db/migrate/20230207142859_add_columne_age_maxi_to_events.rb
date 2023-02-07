class AddColumneAgeMaxiToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :age_maxi, :integer
  end
end
