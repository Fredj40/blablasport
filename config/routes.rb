Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#home"
  resources :events, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  resources :reviews, only: [:show, :destroy]

  get "dashboard", to: "pages#dashboard"
  get "profile", to: "pages#profile"
  get "settings", to: "pages#settings"
  patch "settings", to: "pages#update"
  get "contact", to: "pages#contact"
  get "bookings", to: "bookings#index"

  resources :chatrooms, only: [:show] do
    resources :messages, only: :create
  end

  resources :friends, only: [:index] do
    collection do
      get :search
      post :add, path: 'add/:id'
    end
  end

end
