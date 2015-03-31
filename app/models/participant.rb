# == Schema Information
#
# Table name: participants
#
#  id                           :integer          not null, primary key
#  match_detail_id              :integer
#  team_id                      :integer
#  champion_key                 :integer
#  team_key                     :integer
#  highest_achieved_season_tier :string
#  participant_key              :integer
#  spell1Id                     :integer
#  spell2Id                     :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class Participant < ActiveRecord::Base
  belongs_to :match_detail
  belongs_to :team
  has_one :participant_stat
end
