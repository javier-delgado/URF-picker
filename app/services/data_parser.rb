class DataParser

  def initialize(json_string)
    @data = JSON.parse(json_string)
    @teams = []
  end

  def parse!
    ActiveRecord::Base.transaction do
      match = parse_match_details
      parse_teams(match)
      parse_participants(match)
    end
  end

private 
  def parse_match_details
    MatchDetail.create(
      match_creation: @data['matchCreation'],
      match_duration: @data['matchDuration'],
      region_key: @data['region']
    )
  end

  def parse_teams(match)
    @data['teams'].each do |team|
      Team.create(
        match_detail: match,
        team_key: team['teamId'],
        baron_kills: team['baronKills'],     
        dragon_kills: team['dragonKills'],    
        firs_baron: team['firstBaron'],      
        first_dragon: team['firstDragon'],    
        first_blood: team['firstBlood'],     
        first_inhibitor: team['firstInhibitor'], 
        first_tower: team['firstTower'],     
        tower_kills: team['towerKills'],     
        winner: team['winner']       
      )
    end
  end

  def parse_participants(match)
    @data['participants'].each do |participant|
      Participant.create(
        match_detail: match,
        team: match.teams.by_key(participant['teamId']),
        team_key: participant['teamId'],
        champion_key: participant['championId'],
        highest_achieved_season_tier: participant['highestAchievedSeasonTier'],
        participant_key: participant['participantId'],
        spell1Id: participant['spell1Id'],
        spell2Id: participant['spell2Id'],
        stats: parse_participant_stats(participant['stats'])
      )
    end
  end

  def parse_participant_stats(stats)
    ParticipantStat.create(
      assists: stats['assists'],
      champ_level: stats['champLevel'],
      deaths: stats['deaths'],
      double_kills: stats['doubleKills'],
      gold_earned: stats['goldEarned'],
      item0: stats['item0'],
      item1: stats['item1'],
      item2: stats['item2'],
      item3: stats['item3'],
      item4: stats['item3'],
      item5: stats['item4'],
      item6: stats['item5'],
      item7: stats['item6'],
      kills: stats['kills'],
      magic_damage_dealt_to_champions: stats['magicDamageDealtToChampions'],
      magic_damage_taken: stats['magicDamageTaken'],
      minions_killed: stats['minionsKilled'],
      neutral_minions_killed: stats['neutralMinionsKilled'],
      penta_kills: stats['pentaKills'],
      physical_damage_dealt_to_champions: stats['physicalDamageDealtToChampions'],
      physical_damage_taken: stats['physicalDamageTaken'],
      quadra_kills: stats['quadraKills'],
      total_damage_dealt_to_champions: stats['totalDamageDealtToChampions'],
      total_damage_taken: stats['totalDamageTaken'],
      total_heal: stats['totalHeal'],
      total_time_crowd_control_dealt: stats['totalTimeCrowdControlDealt'],
      tower_kills: stats['towerKills'],
      triple_kills: stats['tripleKills'],
      true_damage_dealt_to_champions: stats['trueDamageDealtToChampions'],
      unreal_kills: stats['unrealKills'],
      wards_placed: stats['wardsPlaced'],
      winner: stats['winner']
    )
  end
end
