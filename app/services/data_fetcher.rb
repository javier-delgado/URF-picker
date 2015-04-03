class DataFetcher 
  attr_writer :region

  def initialize(region)
    @region = region
  end

  def fetch_match_data(match_id)
    full_url = build_full_url("/api/lol/#{@region.url_key}/v2.2/match/#{match_id}")
    response = HTTParty.get(full_url)
    return response
  end

  def fetch_urf_matches(begin_date)
    full_url = build_full_url("/api/lol/#{@region.url_key}/v4.1/game/ids") + "&beginDate=#{begin_date}"
    response = HTTParty.get(full_url)
    return response
  end

private 
  def build_full_url(request_url)
    return get_regional_api + request_url + "?api_key=" + Rails.application.secrets.riot_games_api_key
  end

  def get_regional_api
    return "https://#{@region.url_key}.api.pvp.net"
  end
end
