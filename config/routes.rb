Rails.application.routes.draw do
  resources :friendships
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/', to: 'welcome#index'

  post '/users/:id', to: 'friendships#create'

end
