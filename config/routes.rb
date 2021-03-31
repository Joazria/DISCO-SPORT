Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about_us', to: 'pages#about_us'
  get '/speaker', to: 'pages#speaker'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
