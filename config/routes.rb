Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :hotsauces
  root "hotsauces#index"
end
