Rails.application.routes.draw do
  root 'pages#shiori'
  get '/shiori' , to: 'pages#shiori'
  get '/index' , to: 'books#index'
  get '/books/new', to: 'books#new'
  resources :books
end
 