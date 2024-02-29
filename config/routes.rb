Rails.application.routes.draw do
  devise_for :users
  get 'directions/new', to: 'directions#new'
  post '/directions', to: 'directions#create', as: 'create_direction'
  get '/result/:start_location/:end_location/:waypoint', to: 'directions#result', as: 'result'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :tweets 
  root "tweets#index"

end