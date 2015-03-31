class CreateMatchDetails < ActiveRecord::Migration
  def change
    create_table :match_details do |t|
      t.datetime :match_creation
      t.integer :match_duration, limit: 8
      t.string :region

      t.timestamps null: false
    end
  end
end
