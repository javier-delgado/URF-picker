# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  key        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Region < ActiveRecord::Base
  validates_uniqueness_of :key

  scope :by_key, ->(key) { where(key: key).first }
end
