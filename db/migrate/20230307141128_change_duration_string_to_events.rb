class ChangeDurationStringToEvents < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :duration, :string
  end
end
