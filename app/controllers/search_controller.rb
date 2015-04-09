class SearchController < ApplicationController
  def search_champion
    @option = SearchOption.find_by(name: params[:search_option])
    redirect_to root_path if @option.nil?

    @region = Region.find_by(key: params[:region])

    @result = HighestStat.by_region(@region)
      .order(@option.order_query).first

    render :results
  end
end
