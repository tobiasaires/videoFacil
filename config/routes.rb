Rails.application.routes.draw do
  resources :categories
  resources :videos
  root 'categories#index'

end
