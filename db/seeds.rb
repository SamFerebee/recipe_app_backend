User.create(
    username: "Sam",
    password: "123",
    avatar: "https://i.ytimg.com/vi/iHMpPoW_-us/maxresdefault.jpg",
    comment_history: []
)

ingredientList = [
    {
        name: "chicken",
        category: "protein",
        vegan: false,
        vegetarian: false,
        calories: 335,
        unit: "lb"
    },
    {
        name: "garlic",
        category: "vegetable",
        vegan: true,
        vegetarian: true,
        calories: 5,
        unit: "clove"
    },
    {
        name: "egg",
        category: "protein",
        vegan: false,
        vegetarian: false,
        calories: 80,
        unit: 'egg'
    }
]

ingredientList.each{|ingredient| Ingredient.create(
    name: ingredient[:name],
    category: ingredient[:category],
    vegan: ingredient[:vegan],
    vegetarian: ingredient[:vegetarian],
    calories: ingredient[:calories],
    unit: ingredient[:unit]
)}

chicken = Ingredient.all.find_by(name: "chicken")
garlic = Ingredient.all.find_by(name: "garlic")
egg = Ingredient.all.find_by(name: "egg")

chickenParm = Recipe.create(
    name: "Chicken Parm",
    description: "Yummy chicken with mozz and marinara sauce",
    category: "Entree",
    image: "https://www.thecookierookie.com/wp-content/uploads/2019/04/crispy-chicken-parmesan-recipe-6-of-14.jpg",
    instructions: [["step 1"], ["step 2"], ["step 3"]],
    total_score: 0,
    total_ratings: 0
)

pickenParm = Recipe.create(
    name: "Chicken Parm",
    description: "Yummy chicken with mozz and marinara sauce",
    category: "Entree",
    image: "https://www.thecookierookie.com/wp-content/uploads/2019/04/crispy-chicken-parmesan-recipe-6-of-14.jpg",
    instructions: [["step 1"], ["step 2"], ["step 3"]],
    total_score: 0,
    total_ratings: 0
)

fhickenParm = Recipe.create(
    name: "Chicken Parm",
    description: "Yummy chicken with mozz and marinara sauce",
    category: "Entree",
    image: "https://www.thecookierookie.com/wp-content/uploads/2019/04/crispy-chicken-parmesan-recipe-6-of-14.jpg",
    instructions: [["step 1"], ["step 2"], ["step 3"]],
    total_score: 0,
    total_ratings: 0
)

fhickenParm = Recipe.create(
    name: "Spagetti Carbonara",
    description: "Perfectly cooked spagetti in a creamy egg sauce",
    category: "Entree",
    image: "https://static01.nyt.com/images/2021/02/14/dining/carbonara-horizontal/carbonara-horizontal-articleLarge-v2.jpg",
    instructions: [["step 1"], ["step 2"], ["step 3"]],
    total_score: 0,
    total_ratings: 0
)

RecipeIngredient.create(quantity: 1, ingredient: chicken, recipe: chickenParm)
RecipeIngredient.create(quantity: 2, ingredient: egg, recipe: chickenParm)
RecipeIngredient.create(quantity: 2, ingredient: garlic, recipe: chickenParm)
