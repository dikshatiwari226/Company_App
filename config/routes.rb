Rails.application.routes.draw do
  get 'welcome/index'

  resources :companies
  resources :users

  root 'welcome#index'
  
end
