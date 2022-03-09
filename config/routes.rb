Rails.application.routes.draw do
  root to: 'home#index'
  # регистрация
  get '/users', to: 'users#new'
  post '/users', to: 'users#create'

  # авторизация
  get '/auth', to: 'auth#index'
  post '/auth', to: 'auth#create'

  get '/main', to: 'main#index'
end

