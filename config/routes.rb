Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :favorites, only: [:index, :destroy, :create]
  resources :hotsauces
  root "hotsauces#index"
end
