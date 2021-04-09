Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: 'pages#home'
  get '/about_us', to: 'pages#about_us'
  get '/speaker', to: 'pages#speaker'
  get '/profile', to: 'pages#profile'
  get '/dashboard', to: 'pages#dashboard'
  resources :users, only: [:show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
