Rails.application.routes.draw do
  devise_for :users
  root  'home#index'
  resources :matter, only: [:index, :new, :create]
end
