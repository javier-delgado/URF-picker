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

  has_one :highest_stat
  has_many :participants, foreign_key: :champion_key, primary_key: :champion_key
end
