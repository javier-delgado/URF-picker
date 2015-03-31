# == Schema Information
#
# Table name: match_details
#
#  id             :integer          not null, primary key
#  match_creation :datetime
#  match_duration :integer
#  region         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class MatchDetail < ActiveRecord::Base

  has_many :participants
  has_many :teams
end
