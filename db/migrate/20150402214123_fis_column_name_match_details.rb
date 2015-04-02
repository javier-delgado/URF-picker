class FisColumnNameMatchDetails < ActiveRecord::Migration
  def change
    rename_column :match_details, :region, :region_key
  end
end
