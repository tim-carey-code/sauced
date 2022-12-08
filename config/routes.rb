Rails.application.routes.draw do
  resources :hotsauces
  root "hotsauces#index"
end
