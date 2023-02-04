class AddSportToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :sport, null: false, foreign_key: true
  end
end
