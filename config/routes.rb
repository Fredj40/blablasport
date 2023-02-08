Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :events, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  resources :reviews, only: [:show, :destroy]
end
