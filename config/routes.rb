Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "foods#index"

  resources :foods
  resources :recipes do
    resources :recipe_foods
  end
  resources :public_recipes
  resources :shopping_list
end
