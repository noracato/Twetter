Rails.application.routes.draw do
  resources :twets
  resources :users
  resource :sessions, only: [:new, :create, :destroy]
  resources :subscriptions
  resource :feed, controller: 'feed', only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
