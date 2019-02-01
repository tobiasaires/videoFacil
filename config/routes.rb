Rails.application.routes.draw do
  resources :categories

  root 'categories#index'

   get 'all', to: 'categories#all' 
end
