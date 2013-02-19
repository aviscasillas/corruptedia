Corruptedia::Application.routes.draw do

  get "main/index"

  get "links/index"

  # Users
  devise_for :users
  resources :users, :only => :show

  scope "api" do
  	resources :people, :links
  end
  
  root :to => 'main#index'
  match '*path', to: 'main#index'
end
