Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :food

  # Defines the root path route ("/")
  # root "articles#index"
  root 'food#index'
  
  # get 'food/index' => 'food#index'
  # get 'food/:id' => 'food#show'
  # get 'food/new' => 'food#new'
  # post 'food.create' => 'food#create'
  # get 'food/:id/edit' => 'food#edit'
  # post 'food/:id/destroy' => 'food#destroy'
end
