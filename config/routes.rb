Rails.application.routes.draw do
 
  devise_for :users
  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ] do
  	resources :users, only: [:index, :show, :new, :create]
  end
 get '/api/barbecues/:barbecue_id'=>'apis#show'
 post '/api/barbecues/:barbecue_id/join'=>'apis#create'
 
end
