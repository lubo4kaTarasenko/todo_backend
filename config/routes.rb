Rails.application.routes.draw do
  root to: 'application#index'
  get 'api/items', to: 'api/items#index'
  post 'api/items', to: 'api/items#create'
  put 'api/items', to: 'api/items#update'
end
