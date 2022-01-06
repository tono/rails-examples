Client::Engine.routes.draw do
  root to: 'home#index'
  devise_for :store_users, class_name: "StoreUser",
                           module: :devise,
                           controllers: {
                             sessions:      'client/users/sessions',
                             passwords:     'client/users/passwords',
                             registrations: 'client/users/registrations',
                           }
end
