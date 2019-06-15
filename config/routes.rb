Rails.application.routes.draw do
 
  resources :articles

  resources :companies
  resources :users
  resources :user_roles
  resources :country
  resources :state
  resources :city
  resources	:user_regions
  resources :regions

  get 'welcome/index'

  

  root 'welcome#index'
  
end
