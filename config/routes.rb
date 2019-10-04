Rails.application.routes.draw do
  resources :twets
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :subscriptions
  resources :feed
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
