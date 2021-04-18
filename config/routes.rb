Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  } # pra que serve esse controllers: { sessions: 'users/sessions' } ?

  root to: 'pages#home'
  get '/about_us', to: 'pages#about_us'
  get '/bootcamp', to: 'pages#bootcamp'
  get '/speaker', to: 'pages#speaker'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/delegates', to: 'pages#delegates', as: 'delegates'
  resources :profiles, only: [:show, :edit, :update]
  resources :packages, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  resources :pitchings


  # get '/payments_due/:id', to: 'payments#show_due', as: 'payment_due'
  # patch '/profiles/:id', to: 'profiles#update', as: 'profile'
  # put '/profiles/:id', to: 'profiles#update'

end
