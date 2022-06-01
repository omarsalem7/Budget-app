Rails.application.routes.draw do
  # resources :expenses
  devise_for :users
  get 'splashes/hello'

  resources :categories 
   

  resources :expenses
  # post "expenses", to: "expenses#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'splashes#hello'
end
