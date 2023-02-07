class RanameColumneAgeFilterToEvents < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :age_filter, :age_mini
  end
end
