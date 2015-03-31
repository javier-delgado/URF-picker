Rails.application.routes.draw do
  root 'home#index'

  get 'fetch_data', to: 'home#fetch_data'
end
