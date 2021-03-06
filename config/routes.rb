Rails.application.routes.draw do
  root 'person#index'
  get '/persons/new', to: 'person#new'
  get '/persons', to: 'person#index'
  post '/persons/create', to: 'person#create'
  resources :person, only: [:index]
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
