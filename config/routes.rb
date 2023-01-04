Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  
  root "recipes#public"
  devise_for :users
  resources :foods
  resources :recipes do
    resources :recipe_foods
  end
  resources :public_recipes
  resources :general_shopping_list

end
