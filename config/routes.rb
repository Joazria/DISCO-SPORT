Rails.application.routes.draw do


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }


  root to: 'pages#home'
   get '/privacy', to: 'pages#privacy'
   get '/fulfillment', to: 'pages#fulfillment'
  get '/about_us', to: 'pages#about_us'
  get '/bootcamp', to: 'pages#bootcamp'
  get '/terms', to: 'pages#terms'
  get '/kigali', to: 'pages#kigali'
  get '/speaker', to: 'pages#speaker'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/delegates', to: 'pages#delegates', as: 'delegates'
  resources :profiles, only: [:show, :edit, :update, :index]

  resources :identities, only: [:show, :edit, :update, :create, :new]
  resources :newsletters, only: [:show, :edit, :index, :update, :create, :new]

  resources :packages, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  resources :pitchings

  mount ActionCable.server => "/cable"


  # get '/payments_due/:id', to: 'payments#show_due', as: 'payment_due'
  # patch '/profiles/:id', to: 'profiles#update', as: 'profile'
  # put '/profiles/:id', to: 'profiles#update'

end
