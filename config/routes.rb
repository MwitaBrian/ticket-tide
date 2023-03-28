Rails.application.routes.draw do
  resources :users
#  resource :sessions, only: [:create, :destroy]
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
