# frozen_string_literal: true

# Migration responsible for creating a table with activities
class CreateActivities < ActiveRecord::Migration[7.0]
  # def self.up
  #   create_table :activities do |t|
  #     t.string :key
  #     t.text :parameters
  #     t.belongs_to :recipient, polymorphic: true

  #     t.timestamps
  #   end

  #   add_index :activities, %i[trackable_id trackable_type]
  #   add_index :activities, %i[owner_id owner_type]
  #   add_index :activities, %i[recipient_id recipient_type]
  # end

  # # Drop table
  # def self.down
  #   drop_table :activities
  # end

  def change
    create_table :activities do |t|
      t.string :key
      t.text :parameters
      t.references :trackable, polymorphic: true
      t.references :owner, polymorphic: true
      t.references :recipient, polymorphic: true
      t.datetime :created_at, precision: nil, null: false
      t.datetime :updated_at, precision: nil, null: false
      # add_reference :activities, :recipient, polymorphic: true, index: true, foreign_key: { to_table: :users }
      # add_reference :activities, :trackable, polymorphic: true, index: true, foreign_key: { to_table: :users }
      # add_reference :activities, :owner, index: true, foreign_key: { to_table: :users }
    end
  end
end
