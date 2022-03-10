Rails.application.routes.draw do
  root to: 'home#index'
  # регистрация
  get '/users', to: 'users#new'
  post '/users', to: 'users#create'
  # авторизация
  get '/auth', to: 'auth#index'

  get '/products', to: 'products#index'
end

