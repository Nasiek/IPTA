Rails.application.routes.draw do
  devise_for :users
  get 'ships/edit'
  get 'trips/edit'
  get 'welcome/index'
  get 'users/home', to: 'users#user_home'

  get 'ships/feed', to: 'ships#index'
  get 'ships/personal/:id', to: 'ships#personal', as: 'ship_personal'
  get 'trips/feed', to: 'trips#index', as: 'trip_personal'
  get 'trips/personal/:id', to: 'trips#show'

resources :trips, except: [:index,:show]

resources :ships, except: [:index]


  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
