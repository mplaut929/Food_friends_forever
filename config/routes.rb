Rails.application.routes.draw do
  resources :friendships
  resources :users

  get "/friends", to: "users#friends", as: "active_friends"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/', to: 'welcome#index'

  post '/users/:id', to: 'friendships#create'

  post '/friendships/:id', to: "friendships#update"

end
