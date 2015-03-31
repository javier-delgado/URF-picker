class CreateMatchDetails < ActiveRecord::Migration
  def change
    create_table :match_details do |t|
      t.datetime :matchCreation
      t.integer :matchDuration, limit: 8
      t.string :region

      t.timestamps null: false
    end
  end
end
