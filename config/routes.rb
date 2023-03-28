Rails.application.routes.draw do
  resources :payments
  resources :events
  resources :users
  #  resource :sessions, only: [:create, :destroy]
  post '/payments', to: 'payments#create', as: :event_payments
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
