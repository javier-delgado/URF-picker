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

  scope :by_key, ->(key) { where(key: key).first }
end