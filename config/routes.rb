# frozen_string_literal: true

Rails.application.routes.draw do
  root 'products#index'
  resources :line_items
  resources :carts, except: :index
  resources :products
  devise_for :users, controllers: { registrations: 'registrations' }
end
