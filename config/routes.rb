Rails.application.routes.draw do
  root 'posts#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :posts, only: [:show, :index] do
  	resources :comments
  end

  namespace :admin do
  	resources :posts, except: [:show, :index]

   end
end