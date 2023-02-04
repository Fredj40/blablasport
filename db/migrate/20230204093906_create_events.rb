class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :time
      t.float :price
      t.string :address
      t.string :city
      t.string :level
      t.integer :players_number
      t.integer :duration
      t.integer :age_filter
      t.string :user_status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
