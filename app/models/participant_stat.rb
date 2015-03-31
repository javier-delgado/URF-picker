# == Schema Information
#
# Table name: participant_stats
#
#  id                                 :integer          not null, primary key
#  participant_id                     :integer
#  assists                            :integer
#  champLevel                         :integer
#  deaths                             :integer
#  double_kills                       :integer
#  gold_earned                        :integer
#  item0                              :integer
#  item1                              :integer
#  item2                              :integer
#  item3                              :integer
#  item4                              :integer
#  item5                              :integer
#  item6                              :integer
#  item7                              :integer
#  kills                              :integer
#  magic_damage_dealt_to_champions    :integer
#  magic_damage_taken                 :integer
#  minions_killed                     :integer
#  neutral_minions_killed             :integer
#  penta_kills                        :integer
#  physical_damage_dealt_to_champions :integer
#  physical_damage_taken              :integer
#  quadra_kills                       :integer
#  total_damage_dealt_to_champions    :integer
#  total_damage_taken                 :integer
#  total_heal                         :integer
#  total_time_crowd_control_dealt     :integer
#  tower_kills                        :integer
#  triple_kills                       :integer
#  true_damage_dealt_to_champions     :integer
#  unreal_kills                       :integer
#  wards_placed                       :integer
#  winner                             :boolean
#  created_at                         :datetime         not null
#  updated_at                         :datetime         not null
#

class ParticipantStat < ActiveRecord::Base
  belongs_to :participant
end
