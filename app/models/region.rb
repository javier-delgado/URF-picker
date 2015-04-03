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

  has_many :highest_stats  

  scope :by_key, ->(key) { where(key: key).first }

  def url_key
    key.downcase
  end
end
