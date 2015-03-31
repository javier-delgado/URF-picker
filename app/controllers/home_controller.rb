class HomeController < ApplicationController

  def index; end

  def fetch_data
    fetcher = DataFetcher.new(Region.by_key("las"))
    fetcher.fetch_match_data(150960304)
    redirect_to root_path
  end
  
end