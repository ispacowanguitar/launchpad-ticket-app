Rails.application.routes.draw do
  resources :movies
  devise_for :users

  get '/' => 'movies#index'
  get '/buy/:id' => 'orders#buy', as: :buy
  post '/order/:id' => 'orders#create'

  get '/admin' => 'admins#index'
  get '/auditorium/new' => 'admins#new_auditorium'
  post '/auditorium/create' => 'admins#create_auditorium'
  get '/sales' => 'admins#sales'
  get '/showing/new' => 'admins#new_showing'
  post '/showing/create' => 'admins#create_showing'
end
