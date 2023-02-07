class DeleteCityToEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :city
  end
end
