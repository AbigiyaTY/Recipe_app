Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  get 'recipes/index', to: 'recipes#public'
  resources :users do
    resources :recipes
  end
  resources :users do
    resources :foods
  end
  
  root "recipes#public"
end
