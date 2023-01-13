Rails.application.routes.draw do
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
  
  root "feed_items#index"
end
