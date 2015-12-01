Rails.application.routes.draw do
 
  devise_for :users
  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ] do
  	resources :users, only: [:index, :show, :new, :create]
  end
end
