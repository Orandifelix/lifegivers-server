Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: [:new, :create]
  get "/me", to: "users#show"
  post '/login', to: 'users#login'
  delete '/logout', to: 'users#logout'
  resources :donation_centers
end

