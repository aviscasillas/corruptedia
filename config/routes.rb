Corruptedia::Application.routes.draw do

  get "links/index"

  # Users
  devise_for :users
  resources :users, :only => :show

  resources :people, :links
  root :to => 'people#index'
end
