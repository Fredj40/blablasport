class RenameSportColumnToSportName < ActiveRecord::Migration[7.0]
  def change
    rename_column :sports, :sport, :sport_name
  end
end
