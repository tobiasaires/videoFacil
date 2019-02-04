Rails.application.routes.draw do
  resources :categories
  resources :videos do
    resources :comments
  end
  root 'categories#index'

  get '/api/:id', to: 'videos#video_json'
end
