class SearchController < ApplicationController
  def search_champion
    @option = SearchOption.find(params[:search_option])
    redirect_to root_path if @option.nil?

    region = Region.find_by(id: params[:region])

    @result = HighestStat.by_region(region)
      .order(@option.order_query).first

    render :results
  end
end
