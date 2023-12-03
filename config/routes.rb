Rails.application.routes.draw do

  get '/login', to: 'login#index'
  post '/login', to: 'login#login'
  get  '/logout',  to: 'login#logout'
  # destroy '/logout', to: 'login#destroy'
  # get    '/forgot_password',  to: 'users#forgot_password'

  namespace :api do
    post "/video", to: 'video#new'
  end

  get '/dashboard', to: 'dashboard#home'
  root :to => redirect('/login')

  get "up" => "rails/health#show", as: :rails_health_check
end
