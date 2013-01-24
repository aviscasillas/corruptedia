Corruptedia::Application.routes.draw do
  devise_for :users

  resources :corrupts
  root :to => 'corrupts#index'
end
