Rails.application.routes.draw do

  root to: "pages#home"

  devise_for :users

  resources :pages, only: [:home]

  resources :coupons, only: [:new, :create]

  get "dashboard", to: "dashboards#show", as: :dashboard

  resources :imports, only: [:new, :create]

  namespace :user do
    root :to => "welcome#index"
  end

end

