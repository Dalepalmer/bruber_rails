Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  resources :customers
  resources :bicycles
  resources :contact, :only => [:index]
  resources :tickets
  resources :mechanics
  resources :problems
end
