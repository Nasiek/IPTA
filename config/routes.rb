Rails.application.routes.draw do
  devise_for :users
  get 'ships/edit'
  get 'trips/edit'
  get 'welcome/index'

  get '/destination', to: 'welcome#destinations'
  get '/requirments', to: 'welcome#requirments'
  get '/earnings', to: 'welcome#earnings'
  get '/jobs', to: 'welcome#jobs'

  get 'users/home', to: 'users#user_home'

  get 'ships/feed', to: 'ships#index'
  get 'ships/personal/:id', to: 'ships#personal', as: 'ship_personal'
  get 'trips/feed', to: 'trips#index'
  get 'trips/personal/:id', to: 'trips#show', as: 'trip_personal'
  post 'ship_trips', to: 'contracts#create'
  delete 'ship_trips/:id', to: 'contracts#destroy'
resources :trips, except: [:index]
resources :ships, except: [:index]


  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
