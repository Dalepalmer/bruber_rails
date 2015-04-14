Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  resources :customers
  resources :contact, :only => [:index]
  resources :tickets
  resources :bicycles
  resources :mechanics
  resources :problems
end
