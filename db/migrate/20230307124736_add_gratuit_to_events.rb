class AddGratuitToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :gratuit, :boolean
  end
end
