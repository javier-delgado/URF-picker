# == Schema Information
#
# Table name: teams
#
#  id              :integer          not null, primary key
#  team_key        :integer
#  baron_kills     :integer
#  dragon_kills    :integer
#  firs_baron      :boolean
#  first_dragon    :boolean
#  first_blood     :boolean
#  first_inhibitor :boolean
#  first_tower     :boolean
#  tower_kills     :integer
#  winner          :boolean
#  match_detail_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Team < ActiveRecord::Base
  belongs_to :match_detail

  scope :by_key, ->(key) { where(team_key: key).first }
end
