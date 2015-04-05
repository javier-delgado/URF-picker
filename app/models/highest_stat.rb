# == Schema Information
#
# Table name: highest_stats
#
#  id                                 :integer          not null, primary key
#  champion_id                        :integer
#  assists                            :float
#  champ_level                        :float
#  deaths                             :float
#  double_kills                       :float
#  gold_earned                        :integer
#  kills                              :float
#  magic_damage_dealt_to_champions    :integer
#  magic_damage_taken                 :integer
#  minions_killed                     :float
#  neutral_minions_killed             :float
#  penta_kills                        :float
#  physical_damage_dealt_to_champions :integer
#  physical_damage_taken              :integer
#  quadra_kills                       :float
#  total_damage_dealt_to_champions    :integer
#  total_damage_taken                 :integer
#  total_heal                         :integer
#  total_time_crowd_control_dealt     :integer
#  tower_kills                        :float
#  triple_kills                       :float
#  true_damage_dealt_to_champions     :integer
#  unreal_kills                       :float
#  wards_placed                       :float
#  wins                               :float
#  loses                              :float
#  region_id                          :integer
#  count                              :integer
#

class HighestStat < ActiveRecord::Base
  belongs_to :champion
  belongs_to :region

  scope :by_region, ->(region) { where(region: region)}

  def stats_names
    names = attribute_names - ['id', 'champion_id', 'region_id', 'count']
    names.sort_by { |n| n.downcase }
  end
end
