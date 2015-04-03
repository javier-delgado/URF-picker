# == Schema Information
#
# Table name: search_options
#
#  id              :integer          not null, primary key
#  name            :string
#  associated_stat :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class SearchOption < ActiveRecord::Base
  validates_uniqueness_of :name
end
