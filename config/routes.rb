Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: [:index, :create]
  get "/me", to: "users#show"
  post '/login', to: 'users#login'
  delete '/logout', to: 'users#logout'
  #donations
  resources :donations
  # donation centres
  resources :donation_centers
  #articles
  resources :articles
  # catch-all route for undefined routes
  match '*path', to: 'application#not_found', via: :all
end

