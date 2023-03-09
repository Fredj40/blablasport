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

  resources :bookings do
    member do
      get :approve
      get :reject
      get :cancel
    end
  end

  resources :chatrooms, only: [:show] do
    resources :messages, only: :create
  end

  resources :users

  get "profile", to: "profile#profile", as: "profile"
  get "profile/:id", to: "profile#show", as: "follower"
  post "profile/:id/follow", to: "profile#follow", as: "follow"
  post "profile/:id/unfollow", to: "profile#unfollow", as: "unfollow"
  post "profile/:id/accept", to: "profile#accept", as: "accept"
  post "profile/:id/decline", to: "profile#decline", as: "decline"
  post "profile/:id/cancel", to: "profile#cancel", as: "cancel"

  get "settings", to: "pages#settings"
  patch "settings", to: "pages#update"
  get "contact", to: "pages#contact"
  get "bookings", to: "bookings#index"
  get "dashboard", to: "pages#dashboard"

end
