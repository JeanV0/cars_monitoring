Rails.application.routes.draw do

  get '/bashboard/home', to: 'dashboard#home'

  get '/login', to: 'login#index'

  post '/login', to: 'login#login'

  namespace :api do
    post "/video", to: 'video#new'
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
