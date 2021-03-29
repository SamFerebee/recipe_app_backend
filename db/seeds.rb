User.create(
    username: "Sam",
    password: "123",
    avatar: "https://i.ytimg.com/vi/iHMpPoW_-us/maxresdefault.jpg"
)

ingredientList = [
    {
        name: "chicken",
        category: "protein",
        vegan: false,
        vegetarian: false,
        calories: 335
    },
    {
        name: "garlic",
        category: "vegetable",
        vegan: true,
        vegetarian: true,
        calories: 5
    },
    {
        name: "egg",
        category: "protein",
        vegan: false,
        vegetarian: false,
        calories: 80
    }
]

ingredientList.each{|ingredient| Ingredient.create(
    name: ingredient[:name],
    category: ingredient[:category],
    vegan: ingredient[:vegan],
    vegetarian: ingredient[:vegetarian],
    calories: ingredient[:calories]
)}

chicken = Ingredient.all.find_by(name: "chicken")
garlic = Ingredient.all.find_by(name: "garlic")
egg = Ingredient.all.find_by(name: "egg")

chickenParm = Recipe.create(
    name: "Chicken Parm",
    description: "Yummy chicken with mozz and marinara sauce",
    category: "Entree",
    image: "https://www.thecookierookie.com/wp-content/uploads/2019/04/crispy-chicken-parmesan-recipe-6-of-14.jpg",
    instructions: [["step 1"], ["step 2"], ["step 3"]]
)

RecipeIngredient.create(quantity: 1, ingredient: chicken, recipe: chickenParm)
RecipeIngredient.create(quantity: 2, ingredient: egg, recipe: chickenParm)
RecipeIngredient.create(quantity: 2, ingredient: garlic, recipe: chickenParm)
