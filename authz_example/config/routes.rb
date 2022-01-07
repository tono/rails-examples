Rails.application.routes.draw do
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Case1::Engine, at: '/case1', as: :case1
  mount Case2::Engine, at: '/case2', as: :case2
  mount Case3::Engine, at: '/case3', as: :case3
end
