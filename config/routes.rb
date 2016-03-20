Rails.application.routes.draw do
  resources :movies
  devise_for :users

  get '/' => 'movies#index'
  get '/buy/:id' => 'orders#buy'
  post '/order/:id' => 'orders#create'

  get '/admin' => 'admins#index'
  get '/auditorium/new' => 'admins#new_auditorium'
  post '/auditorium/create' => 'admins#create_auditorium'
end
