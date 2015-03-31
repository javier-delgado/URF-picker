class CreateHighestStats < ActiveRecord::Migration
  def change
    create_table :highest_stats do |t|
      t.references :champion, index: true
      t.integer :assists, limit: 8
      t.integer :champ_level, limit: 8
      t.integer :deaths, limit: 8
      t.integer :double_kills, limit: 8
      t.integer :gold_earned, limit: 8
      t.integer :item0, limit: 8
      t.integer :item1, limit: 8
      t.integer :item2, limit: 8
      t.integer :item3, limit: 8
      t.integer :item4, limit: 8
      t.integer :item5, limit: 8
      t.integer :item6, limit: 8
      t.integer :item7, limit: 8
      t.integer :kills, limit: 8
      t.integer :magic_damage_dealt_to_champions, limit: 8
      t.integer :magic_damage_taken, limit: 8
      t.integer :minions_killed, limit: 8
      t.integer :neutral_minions_killed, limit: 8
      t.integer :penta_kills, limit: 8
      t.integer :physical_damage_dealt_to_champions, limit: 8
      t.integer :physical_damage_taken, limit: 8
      t.integer :quadra_kills, limit: 8
      t.integer :total_damage_dealt_to_champions, limit: 8
      t.integer :total_damage_taken, limit: 8
      t.integer :total_heal, limit: 8
      t.integer :total_time_crowd_control_dealt, limit: 8
      t.integer :tower_kills, limit: 8
      t.integer :triple_kills, limit: 8
      t.integer :true_damage_dealt_to_champions, limit: 8
      t.integer :unreal_kills, limit: 8
      t.integer :wards_placed, limit: 8
      t.integer :wins
      t.integer :loses
    end
    add_foreign_key :highest_stats, :champions
  end
end
