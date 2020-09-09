Rails.application.routes.draw do
  root 'sessions#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #login route
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  #logout route
  delete '/logout' => 'sessions#destroy'
 
  #OMNI/AUTH CALLBACK ROUTE

  get '/auth/google_oauth2/callback' do => 'session#google'
  





  #contact route

  get	'/contacts/:id' => 'contacts#update'
  patch '/contacts/:id', to: 'contacts#update'


  resources :users do
    resources :pages, only:[:new,:create,:index]
  end
  resources :pages do
    resources :contacts, only:[:new,:create,:index]
  end
  resources :contact do
    resources :contacts, only: [:index, :show, :new, :create, :edit, :update]
  end

#nested routes
#new, show , or index
'/users/:id/contacts'

'/pages/:id/contacts'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
