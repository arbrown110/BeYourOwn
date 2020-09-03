Rails.application.routes.draw do
  get '/' => 'session#index'
  get '/login' => 'session#new'
  get '/signup', to: 'users#new', as: 'register'
  post '/signup' => 'users#create'


  resources :users
  resources :contacts
  
  root to: 'user#new'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
