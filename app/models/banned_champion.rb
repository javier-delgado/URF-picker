# == Schema Information
#
# Table name: banned_champions
#
#  id           :integer          not null, primary key
#  team_id      :integer
#  champion_id  :integer
#  champion_key :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class BannedChampion < ActiveRecord::Base
  belongs_to :team
end
