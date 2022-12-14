Rails.application.routes.draw do
  devise_for :users
  resources :hotsauces
  root "hotsauces#index"
end
