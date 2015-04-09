Rails.application.routes.draw do
  root 'home#search'

  post :search_champion, to: 'search#search_champion'

end
