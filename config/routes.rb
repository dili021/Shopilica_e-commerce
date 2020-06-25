Rails.application.routes.draw do
  resources :line_items
  resources :carts, except: :index
  root 'products#index'
  resources :products
  devise_for :users, controllers: { registrations: "registrations" }
end
