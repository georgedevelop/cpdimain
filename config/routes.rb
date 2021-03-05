Rails.application.routes.draw do

  scope '/dashboard' do
      resources :parts, :vendors, :policies, :roles
  end
  get 'dashboard_unauth/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "dashboard#index"

  get 'dashboard/users', to: 'users#index'
  put 'dashboard/users/:id', to: 'users#update_role', as: :user_update_roles

  get 'dashboard_unauth/orders', to: 'dashboard_unauth#orders'
  get 'dashboard_unauth/products', to: 'dashboard_unauth#products'
  get 'dashboard_unauth/customers', to: 'dashboard_unauth#customers'
  get 'dashboard_unauth/users', to: 'dashboard_unauth#users'
  get 'dashboard_unauth/departments', to: 'dashboard_unauth#departments'

end
