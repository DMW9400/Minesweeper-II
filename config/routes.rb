Rails.application.routes.draw do

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
  get '/users/login', to: 'users#login'
  post '/users', to: 'users#login_check'

  get '/games/new', to: 'games#new'
  get '/games/board', to: 'games#board'
  post '/games/location', to: 'games#location'
  post '/games', to: 'games#create'
  get '/games/loser', to: 'games#loser'
  get '/games/winner', to: 'games#winner'

  # get 'signup', to: "users#new", as: "signup"
  # post '/users', to: "users#create"
  get 'sessions/new', to: 'sessions#new', as: 'login'
  post 'sessions', to: 'sessions#create', as: 'sessions'
  delete 'sessions', to: 'sessions#destroy'
end
