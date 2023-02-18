Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#home"
  resources :events, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create, :edit, :destroy]
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  resources :reviews, only: [:show]

  get "dashboard", to: "pages#dashboard"
  get "profile", to: "pages#profile"
  get "settings", to: "pages#settings"
  patch "settings", to: "pages#update"
  get "contact", to: "pages#contact"
  get "bookings", to: "bookings#index"
  get '/users/search', to: 'friendships#search'

  resources :chatrooms, only: [:show] do
    resources :messages, only: :create
  end

  resources :friendships, only: [:index, :create, :update, :destroy] do
    get :friendslist, on: :collection
    patch :accept, on: :member
  end
  get 'friendships/search', to: 'friendships#search', as: 'search_friendship'

  get 'friendships/decline/:id', to: 'friendships#decline', as: 'decline_friendship'
end
