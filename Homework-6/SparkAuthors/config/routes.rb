Rails.application.routes.draw do
  root('home#index')
  resources :users
  resources :ebooks
  resources :orders
end
