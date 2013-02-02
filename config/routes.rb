Corruptedia::Application.routes.draw do

  # Users
  devise_for :users
  resources :users, :only => :show

  resources :corrupts
  root :to => 'corrupts#index'
end
