Rails.application.routes.draw do
  resources :stuffpics
  resources :placepics
  get 'bycar/index'
  get 'boat/page1'
  resources :places
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
