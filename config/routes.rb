Rails.application.routes.draw do
  devise_for :users
  get 'splashes/hello'
  resources :categories 
  resources :expenses

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  unauthenticated do
    root "splashes#hello"
  end

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end
end
