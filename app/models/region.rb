class Region < ActiveRecord::Base

  scope :by_key, ->(key) { where(key: key).first }
end
