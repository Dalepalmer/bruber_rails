Rails.application.routes.draw do

  devise_for :customers
  devise_for :mechanics
  root to: "home#index"
end
