Rails.application.routes.draw do
  #resources :comments
  #resources :recipe_ingredients
  #resources :ingredients
  #resources :recipes
  #resources :users

  ####RECIPES
  get "/recipes", to: "recipes#index"

  #####INGREDIENTS
  get "/ingredients", to: "ingredients#index"

  ####USER STUFF
  post "/login", to: "users#login"


end
