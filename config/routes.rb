Rails.application.routes.draw do
  
  resources :users
  # get 'welcome/index'
 
  root 'welcome#index'

  resources :employees do
  	resources :cars
  end

end
