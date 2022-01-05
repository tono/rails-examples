Admin::Engine.routes.draw do
  unauthenticated :admin_user do
    root to: 'home#index', as: :admin_user_root
  end
  root to: 'home#index'
  devise_for :admin_users, class_name: "AdminUser",
                           module: :devise,
                           singular: :admin,
                           controllers: {
                             sessions:  'admin/admin_users/sessions',
                             passwords: 'admin/admin_users/passwords'
                           }
end
