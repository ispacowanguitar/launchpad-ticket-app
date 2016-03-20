Rails.application.routes.draw do
  resources :movies
  devise_for :users

  get '/' => 'movies#index'
  get '/buy/:id' => 'orders#buy'
  post '/order/:id' => 'orders#create'
end
