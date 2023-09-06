Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: [:index, :create]
  get "/me", to: "users#show"
  post '/login', to: 'users#login'
  delete '/logout', to: 'users#logout'
  #donations
  resources :donations  
  #articles
  resources :articles  
end

