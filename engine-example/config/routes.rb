Rails.application.routes.draw do
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Admin::Engine, at: '/admin', as: :admin
  mount Client::Engine, at: '/client', as: :client
end
