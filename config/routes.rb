Rails.application.routes.draw do
  #resources :comments
  #resources :recipe_ingredients
  #resources :ingredients
  #resources :recipes
  #resources :users

  ####RECIPES
  get "/recipes", to: "recipes#index"
  get "/recipes/:id", to: "recipes#show"
  post "/add_comment", to: "recipes#add_comment"
  get "/recipes/:id/rating", to: "recipes#get_rating"
  post "/recipes/create_recipe", to: "recipes#create_recipe"

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
  get "/me", to: "users#me"
  get "/users/:id/:recipe/comments", to: "users#check_comment"



end
