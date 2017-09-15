Rails.application.routes.draw do
  devise_for :users, :path=>'',
    :path_names=>{:sign_in=>'login', :sign_out=>'logout', :edit=>'profile'},
    :controllers=>{:registrations=>'registrations',
                    :confirmations=>'confirmations',
                    :omniauth_callbacks => 'omniauth_callbacks'}
  root 'pages#home'
  
  resources :users, only: [:show]
  resources :rooms do
   
  resources :reservations, only: [:create]
  resources :reviews, only: [:create, :destroy]
   
  end
  resources :photos
  
  resources :conversations, only: [:index, :create] do
 
       resources :messages, only: [:index, :create]
 
 end
  
  get '/preload' => 'reservations#preload'
  get '/preview' => 'reservations#preview'
  get '/your_trips' => 'reservations#your_trips'
  get '/your_reservations' => 'reservations#your_reservations'
  get '/rooms' => 'rooms#index'
  
  get '/search' => 'pages#search'
end
