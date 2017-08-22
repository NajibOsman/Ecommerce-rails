Rails.application.routes.draw do
  resource :cart, only: [:show]
  resources :charges
  resources :orders
  resources :order_items
  devise_for :users
  resources :products do
    get "delete"
  end

  root to: "products#index"
end
