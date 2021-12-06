Rails.application.routes.draw do
  root 'pages#shiori'
  get '/shiori' , to: 'pages#shiori'
  get '/index' , to: 'books#index'
  get '/new' , to: 'books#new'
  get '/show' , to: 'books#show'
  resources :books
end
 