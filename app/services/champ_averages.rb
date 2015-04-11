class ChampAverages

  def calculate!
    create_stats_per_champion_per_region
    perform_summatory
    HighestStat.destroy_all #Erase previous data

    p "saving..."
    @stats_array.map {|hss| hss.calculate_and_save! }
  end

private
  def create_stats_per_champion_per_region
    @stats_array = []
    Champion.all.each do |champ|
      @stats_array << HighestStatSummatory.new(champ)   
      Region.all.each do |region|
        @stats_array << HighestStatSummatory.new(champ, region)
      end
    end
  end

  def perform_summatory
    total = MatchDetail.count
    match_details = MatchDetail.all.eager_load(:participants => :champion).eager_load(:participants => :stats).eager_load(:region)
    match_details.each_with_index do |match, idx|
      print "\r#{idx}/#{total} complete"
      match.participants.each do |participant|
        #regional
        hss = find_highest_stat_summatory(participant.champion, match.region)
        hss.add_values(participant.stats)

        #global
        hss = find_highest_stat_summatory(participant.champion, "global")
        hss.add_values(participant.stats)
      end
    end
  end

  def find_highest_stat_summatory(champion, region)
    i = @stats_array.find_index {|hs| hs.champion == champion && hs.region == region}
    @stats_array[i]
  end
end
