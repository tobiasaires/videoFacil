Rails.application.routes.draw do
  resources :categories
  resources :videos
  root 'categories#index'

  get '/:id', to: 'videos#video_json'
end
