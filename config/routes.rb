Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  } # pra que serve esse controllers: { sessions: 'users/sessions' } ?

  root to: 'pages#home'
  get '/about_us', to: 'pages#about_us'
  get '/speaker', to: 'pages#speaker'
  # get '/profile', to: 'pages#profile'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  resources :profiles, only: [:show, :edit, :update]
  resources :packages, only: [:index, :show]
  resources :pitchings
  # get '/payments_due/:id', to: 'payments#show_due', as: 'payment_due'
  # patch '/profiles/:id', to: 'profiles#update', as: 'profile'
  # put '/profiles/:id', to: 'profiles#update'

  # as :user do
  #   # get 'users/profile', :to => 'devise/registrations#edit', :as => :user_root
  #   get "profiles/#{current_user}", :to => 'profiles#show', :as => :user_root
  # end


end
