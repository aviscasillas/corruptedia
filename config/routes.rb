Corruptedia::Application.routes.draw do

  # Users
  devise_for :users
  resources :users, :only => :show

  resources :people
  root :to => 'people#index'
end
