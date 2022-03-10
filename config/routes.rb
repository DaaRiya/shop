Rails.application.routes.draw do
  root to: 'home#index'
  # регистрация
  get '/users', to: 'users#new'
  post '/users', to: 'users#create'
  # авторизация
  get '/auth', to: 'auth#new'
  post '/auth', to: 'auth#create'
  delete '/auth', to: 'auth#destroy'

  get '/products', to: 'products#index'
  get '/bag' , to: 'products#bag'
end

