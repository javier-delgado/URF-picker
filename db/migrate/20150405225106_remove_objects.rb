class RemoveObjects < ActiveRecord::Migration
  def change
    remove_column :highest_stats, :item0
    remove_column :highest_stats, :item1
    remove_column :highest_stats, :item2
    remove_column :highest_stats, :item3
    remove_column :highest_stats, :item4
    remove_column :highest_stats, :item5
    remove_column :highest_stats, :item6
    remove_column :highest_stats, :item7
  end
end
