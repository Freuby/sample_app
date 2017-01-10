Rails.application.routes.draw do

  resources :users

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'help', to: 'pages#help'
  get 'signup', to: 'users#new'

  root :to => 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
