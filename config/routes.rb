Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  devise_for :users

  root "foods#index"

  resources :foods
  resources :recipes do
    resources :recipe_foods
  end
  resources :public_recipes
  resources :general_shopping_list

end
