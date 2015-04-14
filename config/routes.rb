Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  resources :contact, :only => [:index]
  resources :tickets, :except => [:new, :edit]
  resources :bicycles, :except => [:new, :edit]
  resources :customers, :except => [:new, :edit]
  resources :mechanics, :except => [:new, :edit]
  resources :problems, :except => [:new, :edit]
end
