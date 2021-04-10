Rails.application.routes.draw do

  # get 'pitchings/index'
  # get 'pitchings/show'
  # get 'pitchings/new'
  # get 'pitchings/create'
  # get 'pitchings/edit'
  # get 'pitchings/update'
  # get 'pitchings/destroy'
        devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :pitchings


  root to: 'pages#home'
  get '/about_us', to: 'pages#about_us'
  get '/speaker', to: 'pages#speaker'
  get '/profile', to: 'pages#profile'
  get '/dashboard', to: 'pages#dashboard'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
