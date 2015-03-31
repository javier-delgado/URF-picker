class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :team_key
      t.integer :baron_kills
      t.integer :dragon_kills
      t.boolean :firs_baron
      t.boolean :first_dragon
      t.boolean :first_blood
      t.boolean :first_inhibitor
      t.boolean :first_tower
      t.integer :tower_kills
      t.boolean :winner
      t.references :match_detail, index: true

      t.timestamps null: false
    end
    add_foreign_key :teams, :match_details
  end
end
