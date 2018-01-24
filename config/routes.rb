Rails.application.routes.draw do
  #spaces
  # get '/spaces/new', to: 'spaces#new'
  # get '/spaces/board', to: 'spaces#board'
  # post '/spaces/location', to: 'spaces#location'
  # post '/spaces', to: 'spaces#create'
  # get '/spaces/loser', to: 'spaces#loser'
  # get '/spaces/winner', to: 'spaces#winner'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'

  get '/games/new', to: 'games#new'
  get '/games/board', to: 'games#board'
  post '/games/location', to: 'games#location'
  post '/games', to: 'games#create'
  get '/games/loser', to: 'games#loser'
  get '/games/winner', to: 'games#winner'

end
