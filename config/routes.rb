Rails.application.routes.draw do
  root to: 'application#index'
  get 'api/items', to: 'api/items#index'
  post 'api/items', to: 'api/items#create'
  put 'api/items', to: 'api/items#update'
  delete 'api/items', to: 'api/items#destroy'

  post 'api/auth', to: 'api/auth#sign_up'
  put 'api/auth', to: 'api/auth#log_in'
end
