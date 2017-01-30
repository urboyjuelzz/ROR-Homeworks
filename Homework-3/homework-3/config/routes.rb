Rails.application.routes.draw do
  get('main' => 'homework#index')
  get('about' => 'homework#about')
end
