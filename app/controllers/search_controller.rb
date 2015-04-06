class SearchController < ApplicationController
  autocomplete :search_option, :name, full: true, extra_data: [:associated_stat]

  def search_champion
    @option = SearchOption.find_by(name: params[:search_option_name])
    redirect_to root_path if @option.nil?

    region = Region.find_by(id: params[:region])

    @result = HighestStat.by_region(region)
      .order(@option.order_query).first

    render :results
  end

end
