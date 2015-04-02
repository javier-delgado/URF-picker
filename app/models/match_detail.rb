# == Schema Information
#
# Table name: match_details
#
#  id             :integer          not null, primary key
#  match_creation :datetime
#  match_duration :integer
#  region_key     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class MatchDetail < ActiveRecord::Base

  has_many :participants
  has_many :teams
  belongs_to :region, foreign_key: :region_key, primary_key: :key
end
