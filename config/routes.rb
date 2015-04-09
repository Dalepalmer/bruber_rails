Rails.application.routes.draw do
  scope '/api' do
  mount_devise_token_auth_for 'User', at: '/auth'
  end
  root to: "home#index"

  resources :tickets, :except => [:new, :edit]
  resources :bicycles, :except => [:new, :edit]
  resources :customers, :except => [:new, :edit]
  resources :mechanics, :except => [:new, :edit]
  resources :problems, :except => [:new, :edit]
end
