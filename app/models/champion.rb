# == Schema Information
#
# Table name: champions
#
#  id           :integer          not null, primary key
#  champion_key :integer
#  name         :string
#  title        :string
#  image        :string
#  sprite       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Champion < ActiveRecord::Base
  validates_uniqueness_of :champion_key

  has_many :highest_stats
  has_many :participants, foreign_key: :champion_key, primary_key: :champion_key

  def highest_stat_by_region(region)
    highest_stats.where(region: region)
  end
end
