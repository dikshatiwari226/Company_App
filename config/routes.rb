Rails.application.routes.draw do
 
  devise_for :users
  resources :articles

  resources :companies
  
  resources :user_roles
  resources :country
  resources :state
  resources :city
  resources	:user_regions
  resources :regions
  resources :images
  resources :places
  resources :nodes

  get 'welcome/index'

  

  root 'welcome#index'
  
end
