Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  } # pra que serve esse controllers: { sessions: 'users/sessions' } ?

  root to: 'pages#home'
  get '/about_us', to: 'pages#about_us'
  get '/speaker', to: 'pages#speaker'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  resources :profiles, only: [:show, :edit, :update]
  resources :packages, only: [:index, :show]
  resources :pitchings



end
