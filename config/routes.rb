Rails.application.routes.draw do
  # get 'home/welcome'
  get 'home/welcome'
  root 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :user_contact
end
