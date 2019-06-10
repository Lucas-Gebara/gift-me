Rails.application.routes.draw do
  get 'dashboards/show'
  get 'imports/new'
  get 'imports/create'
  get 'coupons/new'
  get 'coupons/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
