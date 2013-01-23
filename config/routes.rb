Corruptedia::Application.routes.draw do
  resources :corrupts
  root :to => 'corrupts#index'
end
