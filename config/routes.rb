Rails.application.routes.draw do
  get 'users/show'
  get 'users/new'
  root 'pages#shiori'
  get '/shiori' , to: 'pages#shiori'
  resources :users
  resources :books
end