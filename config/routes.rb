Rails.application.routes.draw do
  root 'pages#shiori'
  get '/shiori' , to: 'pages#shiori'
  get '/index' , to: 'books#index'
  get '/books/:id/edit', to: 'books#edit'
  
  post '/books/:id/update', to: 'books#update'
  post '/books/new', to: 'books#new'
  delete '/books/:id/edit',  to: 'books#destroy'
  resources :books
end
 