class HomeController < ApplicationController
  autocomplete :search_option, :name, full: true

  def search; end
  
end