Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  # restricting these because the devise user handles these
  resources :user_stocks, except: [:show, :edit, :update]
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to:   'stocks#search'

end
