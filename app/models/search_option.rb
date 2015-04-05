# == Schema Information
#
# Table name: search_options
#
#  id              :integer          not null, primary key
#  name            :string
#  associated_stat :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  ordering        :string
#  explanation     :text
#

class SearchOption < ActiveRecord::Base
  validates_uniqueness_of :name

  def order_query
    associated_stat + " " + ordering
  end

  def explanation_for(champ_name)
    explanation.sub("{champ_name}", champ_name)
  end
end
