class AddRegionToHighestStat < ActiveRecord::Migration
  def change
    add_column :highest_stats, :region_id, :integer
  end
end
