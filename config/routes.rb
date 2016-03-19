Rails.application.routes.draw do
  resources :movies
  devise_for :users

  get '/' => 'movies#index'
end
