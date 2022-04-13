Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'foods#index'
  
  get 'food/index' => 'food#index'
  get 'food/:id' => 'food#show'
  get 'food/new' => 'food#new'
end
