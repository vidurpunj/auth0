Rails.application.routes.draw do
  get 'welcome/index'
  root to: "welcome#index"
  resources :sessions, only: [:create, :destroy]
  get 'dashboard/show'
  get '/auth/auth0/callback' => 'sessions#create'
  # get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'sessions#destroy'
end