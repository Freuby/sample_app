Rails.application.routes.draw do

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :micropost, :only => [:new, :create, :destroy]

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'help', to: 'pages#help'
  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  get 'signout', to: 'sessions#destroy'
  get 'new_micropost', to: 'micropost#new'

  root :to => 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
