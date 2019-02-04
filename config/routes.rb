Rails.application.routes.draw do
  resources :categories
  resources :videos do
    resources :comments
  end
  root 'categories#index'

  get '/:id', to: 'videos#video_json'
end
