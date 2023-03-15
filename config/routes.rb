Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :favorites, only: [:index, :destroy, :create]
  resources :feed_items, only: [:index]
  resources :hotsauces do
    member do
      resources :checkins, only: [:new, :create]
    end
  end

  resources :checkins do
    resource :like, module: :checkins
  end
  
  root "home#index"

  get "/users/:id/profile", to: "users/profiles#index", as: "user_profile"
end
