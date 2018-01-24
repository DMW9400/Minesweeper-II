Rails.application.routes.draw do
  #spaces
  get '/spaces/new', to: 'spaces#new'
  get '/spaces/board', to: 'spaces#board'
  post '/spaces/location', to: 'spaces#location'
  post '/spaces', to: 'spaces#create'
  get '/spaces/loser', to: 'spaces#loser'
  get '/spaces/winner', to: 'spaces#winner'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'


  # resources :grids

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
