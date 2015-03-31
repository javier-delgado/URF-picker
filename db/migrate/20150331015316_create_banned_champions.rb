class CreateBannedChampions < ActiveRecord::Migration
  def change
    create_table :banned_champions do |t|
      t.references :team, index: true
      t.references :champion, index: true
      t.integer :champion_key

      t.timestamps null: false
    end
    add_foreign_key :banned_champions, :teams
    add_foreign_key :banned_champions, :champions
  end
end
