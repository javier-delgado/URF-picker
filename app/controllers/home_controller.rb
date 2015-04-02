class HomeController < ApplicationController

  def index; end

  def fetch_data
    fetcher = DataFetcher.new(Region.by_key("las"))
    json_string = fetcher.fetch_match_data(150960304).body

    parser = DataParser.new(json_string)
    parser.parse!
    redirect_to root_path
  end
  
end