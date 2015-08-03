Rails.application.routes.draw do
  root 'movies#index'

  resources :movies
  resources :actors
  resources :users
end
