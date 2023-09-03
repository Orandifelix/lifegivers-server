Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: [:new, :create]
  get '/login', to: 'users#login'
  post '/login', to: 'users#login'
  delete '/logout', to: 'users#logout'
end

