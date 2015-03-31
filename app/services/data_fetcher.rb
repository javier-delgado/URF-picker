class DataFetcher 
  attr_writer :region
  #80657
  #150960304

  def initialize(region)
    @region = region
  end

  def fetch_match_data(match_id)
    request_url = "/api/lol/#{@region.key}/v2.2/match/#{match_id}"
    response = HTTParty.get(build_full_url(request_url))
    return response.body
  end

private 
  def build_full_url(request_url)
    return get_regional_api + request_url + "?api_key=" + Rails.application.secrets.riot_games_api_key
  end

  def get_regional_api
    return "https://#{@region.key}.api.pvp.net"
  end
end
