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
  get "/ingredients/proteins", to: "ingredients#get_proteins"
  get "/ingredients/veggies", to: "ingredients#get_veggies"
  get "/ingredients/sides", to: "ingredients#get_sides"

  ####USER STUFF
  post "/login", to: "users#login"
  post "/create_account", to: "users#create_account"
  delete "/delete_account/:id", to: "users#destroy"
  patch "/edit_account/:id", to: "users#edit_account"
  patch "/edit_password/:id", to: "users#edit_password"



end
