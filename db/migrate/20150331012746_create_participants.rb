class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :match_detail, index: true
      t.references :team, index: true
      t.integer :champion_key
      t.integer :team_key
      t.string  :highest_achieved_season_tier
      t.integer :participant_key
      t.integer :spell1ld
      t.integer :spell2ld

      t.timestamps null: false
    end
    add_foreign_key :participants, :match_details
    add_foreign_key :participants, :teams
  end
end
