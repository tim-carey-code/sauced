Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :favorites, only: [:index, :destroy, :create]
  resources :feed_items, only: [:index]
  resources :hotsauces
  root "feed_items#index"
end
