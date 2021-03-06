Rails.application.routes.draw do
  devise_for :users
  root :to => 'practitioners#index'
  get "/contact" => "practitioners#contact"
  get "/about" => "practitioners#about"
  resources :practitioners
  resources :services
  resources :pictures, only: [:index, :new, :create, :destroy]
end
