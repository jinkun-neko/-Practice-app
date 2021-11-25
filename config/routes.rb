Rails.application.routes.draw do
  root 'pages#shiori'
  get '/shiori' , to: 'pages#shiori'
  get '/index' , to: 'books#index'
  get '/new' , to: 'books#new'
end
