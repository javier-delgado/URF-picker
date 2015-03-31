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
  has_one :highest_stat
end
