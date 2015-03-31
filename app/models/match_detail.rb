# == Schema Information
#
# Table name: match_details
#
#  id            :integer          not null, primary key
#  matchCreation :datetime
#  matchDuration :integer
#  region        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class MatchDetail < ActiveRecord::Base
end
