Rails.application.routes.draw do
  resources :articles
  get 'welcome/index'

  resources :companies
  resources :users
  resources :user_roles

  root 'welcome#index'
  
end
