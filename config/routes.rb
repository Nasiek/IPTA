Rails.application.routes.draw do
  get 'ships/edit'
  get 'trips/edit'
  get 'welcome/index'
  

  get 'ships/feed', to: 'ships#index'
  get 'ships/personal', to: 'ships#show'
  get 'trips/feed', to: 'trips#index'
  get 'trips/personal', to: 'trips#show'

resources :trips, except: [:index,:show]

resources :ships, except: [:index,:show]


  devise_for :users
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
