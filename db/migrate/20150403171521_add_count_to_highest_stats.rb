class AddCountToHighestStats < ActiveRecord::Migration
  def change
    add_column :highest_stats, :count, :integer
  end
end
