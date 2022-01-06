Case1::Engine.routes.draw do
  resources :tasks
  resources :categories
  root to: 'home#index'
  get 'sign_in', to: 'user_sessions#new'
  delete 'sign_out', to: 'user_sessions#destroy'
  resources :user_sessions, only: :create
end
