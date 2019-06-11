Rails.application.routes.draw do

  root to: "pages#home"

  devise_for :users

  resources :pages, only: [:home]

  resources :coupons, only: [:new, :create]

  resources :dashboards, only: [:show]

  resources :imports, only: [:new, :create]

end

