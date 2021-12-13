Rails.application.routes.draw do
  root 'pages#shiori'
  get '/shiori' , to: 'pages#shiori'
  get '/index' , to: 'books#index'
  get '/books/new', to: 'books#new'
  get '/books/:id' , to: 'books#show'
  get '/books/:id/edit' , to: 'books#edit' 
  
  post '/books', to: 'books#create'
  patch '/books/:id/' , to:  'books#update'
  delete '/books/:id/' , to: 'books#delete'
  resources :books
end