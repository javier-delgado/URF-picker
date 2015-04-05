class ChangeIntegerToDecimal < ActiveRecord::Migration
  def change
    change_table :highest_stats do |t|
      t.change :assists, :float
      t.change :champ_level, :float
      t.change :deaths, :float
      t.change :double_kills, :float
      t.change :kills, :float
      t.change :minions_killed, :float
      t.change :neutral_minions_killed, :float
      t.change :penta_kills, :float
      t.change :quadra_kills, :float
      t.change :tower_kills, :float
      t.change :triple_kills, :float
      t.change :unreal_kills, :float
      t.change :wards_placed, :float
      t.change :wins, :float
      t.change :loses, :float
    end
  end
end
