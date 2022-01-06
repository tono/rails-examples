Case3::Engine.routes.draw do
  resources :categories
  resources :tasks
  root to: 'home#index'
  get 'sign_in', to: 'user_sessions#new'
  delete 'sign_out', to: 'user_sessions#destroy'
  resources :user_sessions, only: :create
end
