Rails.application.routes.draw do
  root 'pages#shiori'
  get 'sessions/new' 
  get 'users/show' , to: 'users/#show'
  get  '/signup',  to: 'users#new'
  get  '/picture',  to: 'users#picture'
  post '/picture',   to: 'users#create'
  get '/shiori' , to: 'pages#shiori'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :books
end