class HighestStatSummatory

  attr_accessor :champion, :region, :assists, :champ_level, 
    :deaths, :kills, :double_kills, :gold_earned, :kills, 
    :magic_damage_dealt_to_champions, :magic_damage_taken, 
    :minions_killed, :neutral_minions_killed, :penta_kills, 
    :physical_damage_dealt_to_champions, 
    :physical_damage_taken, :quadra_kills, 
    :total_damage_dealt_to_champions, :total_damage_taken, 
    :total_heal, :total_time_crowd_control_dealt, 
    :tower_kills, :triple_kills, 
    :true_damage_dealt_to_champions, :unreal_kills, 
    :wards_placed, :wins, :loses

  def initialize(champion, region = "global")
    @champion = champion
    @region = region

    @count = 0

    @assists = 0
    @champ_level = 0
    @deaths = 0
    @kills = 0
    @double_kills = 0
    @gold_earned = 0
    @magic_damage_dealt_to_champions = 0
    @magic_damage_taken = 0
    @minions_killed = 0
    @neutral_minions_killed = 0
    @penta_kills = 0
    @physical_damage_dealt_to_champions = 0
    @physical_damage_taken = 0
    @quadra_kills = 0
    @total_damage_dealt_to_champions = 0
    @total_damage_taken = 0
    @total_heal = 0
    @total_time_crowd_control_dealt = 0
    @tower_kills = 0
    @triple_kills = 0
    @true_damage_dealt_to_champions = 0
    @unreal_kills = 0
    @wards_placed = 0
    @wins = 0
    @loses = 0
  end

  def add_values(stats)
    @count += 1

    @assists += stats.assists
    @champ_level += stats.champ_level
    @deaths += stats.deaths
    @kills += stats.kills
    @double_kills += stats.double_kills
    @gold_earned += stats.gold_earned
    @magic_damage_dealt_to_champions += stats.magic_damage_dealt_to_champions
    @magic_damage_taken += stats.magic_damage_taken
    @minions_killed += stats.minions_killed
    @neutral_minions_killed += stats.neutral_minions_killed
    @penta_kills += stats.penta_kills
    @physical_damage_dealt_to_champions += stats.physical_damage_dealt_to_champions
    @physical_damage_taken += stats.physical_damage_taken
    @quadra_kills += stats.quadra_kills
    @total_damage_dealt_to_champions += stats.total_damage_dealt_to_champions
    @total_damage_taken += stats.total_damage_taken
    @total_heal += stats.total_heal
    @total_time_crowd_control_dealt += stats.total_time_crowd_control_dealt
    @tower_kills += stats.tower_kills
    @triple_kills += stats.triple_kills
    @true_damage_dealt_to_champions += stats.true_damage_dealt_to_champions
    @unreal_kills += stats.unreal_kills
    @wards_placed += stats.wards_placed
    if stats.winner
      @wins += 1
    else
      @loses += 1
    end
  end

  def calculate_and_save!
    @count = 1 if @count == 0 #To avoid division by zero
    HighestStat.create(
      champion: @champion,
      region: @region == "global" ? nil : @region,
      count: @count,
      assists: (@assists / @count),
      champ_level: (@champ_level / @count),
      deaths: (@deaths / @count),
      kills: (@kills / @count),
      double_kills: (@double_kills / @count),
      gold_earned: (@gold_earned / @count),
      kills: (@kills / @count),
      magic_damage_dealt_to_champions: (@magic_damage_dealt_to_champions / @count),
      magic_damage_taken: (@magic_damage_taken / @count),
      minions_killed: (@minions_killed / @count),
      neutral_minions_killed: (@neutral_minions_killed / @count),
      penta_kills: (@penta_kills / @count),
      physical_damage_dealt_to_champions: (@physical_damage_dealt_to_champions / @count),
      physical_damage_taken: (@physical_damage_taken / @count),
      quadra_kills: (@quadra_kills / @count),
      total_damage_dealt_to_champions: (@total_damage_dealt_to_champions / @count),
      total_damage_taken: (@total_damage_taken / @count),
      total_heal: (@total_heal / @count),
      total_time_crowd_control_dealt: (@total_time_crowd_control_dealt / @count),
      tower_kills: (@tower_kills / @count),
      triple_kills: (@triple_kills / @count),
      true_damage_dealt_to_champions: (@true_damage_dealt_to_champions / @count),
      unreal_kills: (@unreal_kills / @count),
      wards_placed: (@wards_placed / @count),
      wins: @wins,
      loses: @loses
   )
  end

end
