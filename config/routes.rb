Rails.application.routes.draw do
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :articles

  resources :companies
  
  resources :user_roles

  resources :country do
    collection do
      get :country_select
    end
  end
  
  resources :state do
    collection do
      get :state_select
      get :user
    end
  end
  
  resources :city
  resources	:user_regions
  resources :regions
  resources :images
  resources :places
  resources :nodes
  

  get 'welcome/index'

  

  root 'welcome#index'
  
end
