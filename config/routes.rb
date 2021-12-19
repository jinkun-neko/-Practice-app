Rails.application.routes.draw do
  root 'pages#shiori'
  get 'users/show'
  get 'users/new'
  get '/shiori' , to: 'pages#shiori'
  resources :users
  resources :books
end