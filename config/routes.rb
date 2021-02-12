Rails.application.routes.draw do
  root to: 'home#index'
  resources :matter, only: :index
end
