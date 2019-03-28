Rails.application.routes.draw do
  resources :user_restrictions, only: [:new, :create]
  resources :friendships, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :new, :create, :show, :edit, :update]

  get "/friends", to: "users#friends", as: "active_friends"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/', to: 'welcome#index'

  post '/users/:id', to: 'friendships#create'

  post '/friendships/:id', to: "friendships#update"

  post '/conversation/:id/messages', to: 'messages#create', as: 'messages'

  get '/analytics', to: 'users#analytics', as: "analytics"

  delete "/friendships/:id", to: "friendships#unfriend", as: 'unfriend'

  # post '/users', to: 'users#index', as: 'sort'

end
