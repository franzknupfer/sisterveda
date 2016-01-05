Rails.application.routes.draw do
  root :to => 'practitioners#index'
  get "/contact" => "practitioners#contact"
  get "/about" => "practitioners#about"
  resources :practitioners
  resources :services
end
