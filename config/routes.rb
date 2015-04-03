Rails.application.routes.draw do
  root 'home#search'

  get  :autocomplete_search_option_name, to: 'home#autocomplete_search_option_name'
  post :search_champion, to: 'search#search_champion'

end
