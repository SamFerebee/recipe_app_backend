User.create(
    username: "Sam",
    password: "123",
    avatar: "https://i.ytimg.com/vi/iHMpPoW_-us/maxresdefault.jpg",
    comment_history: [],
    liked_recipes: []
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
        vegetarian: true,
        calories: 80,
        unit: 'egg'
    },
    {
        name: "butter",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 102,
        unit: "tbsp"
    },
    {
        name: "bread crumbs",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 427,
        unit: "tbsp"
    },
    {
        name: "lemon juice",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 3,
        unit: "tbsp"
    },
    {
        name: "whole milk",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 149,
        unit: "cup(s)"
    },
    {
        name: "flour",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 455,
        unit: "cup(s)"
    },
    {
        name: "sweet Italian Sausage",
        category: "protein",
        vegan: false,
        vegetarian: false,
        calories: 1463,
        unit: "lbs"
    },
    {
        name: "broccoli rabe",
        category: "vegetable",
        vegan: true,
        vegetarian: true,
        calories: 100,
        unit: "tbsp"
    },
    {
        name: "olive oil",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 119,
        unit: "tbsp"
    },
    {
        name: "lemon zest",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 2,
        unit: "tbsp"
    },
    {
        name: "almound milk",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 60,
        unit: "cup(s)"
    },
    {
        name: "red bell pepers",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 9,
        unit: "oz"
    },
    {
        name: "spam",
        category: "protein",
        vegan: false,
        vegetarian: false,
        calories: 174,
        unit: "can"
    },
    {
        name: "mozzerella cheese",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 78,
        unit: "slice"
    },
    {
        name: "pasta",
        category: "pasta",
        vegan: true,
        vegetarian: true,
        calories: 716,
        unit: "lbs"
    },
    {
        name: "bread",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 78,
        unit: "slice"
    },
    {
        name: "avocado",
        category: "vegetable",
        vegan: true,
        vegetarian: true,
        calories: 322,
        unit: "avocado"
    },
    {
        name: "grated parmesan",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 22,
        unit: "oz"
    },
    {
        name: "bacon",
        category: "protein",
        vegan: false,
        vegetarian: false,
        calories: 2438,
        unit: "lbs"
    },
    {
        name: "ricotta chesse",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 49,
        unit: "oz"
    },
    {
        name: "sugar",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 49,
        unit: "tsp"
    },
    {
        name: "onion",
        category: "vegetable",
        vegan: true,
        vegetarian: true,
        calories: 42,
        unit: "onion"
    },
    {
        name: "jack fruit",
        category: "protein",
        vegan: true,
        vegetarian: true,
        calories: 155,
        unit: "can"
    },
    {
        name: "BBQ sauce",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 29,
        unit: "tbsp"
    },
    {
        name: "red cabbage slaw",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 200,
        unit: "cup"
    },
    {
        name: "buns",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 200,
        unit: "buns"
    },
    {
        name: "paprika",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 5,
        unit: "tbs"
    },
    {
        name: "baking powder",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 4,
        unit: "tbsp"
    },
    {
        name: "strawberries",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 4,
        unit: "strawberry"
    }, 
    {
        name: "vanilla extract",
        category: "side",
        vegan: true,
        vegetarian: true,
        calories: 4,
        unit: "tbs"
    },
    {
        name: "heavy cream",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 800,
        unit: "cup(s)"
    },
    {
        name: "buttermilk",
        category: "side",
        vegan: false,
        vegetarian: true,
        calories: 99,
        unit: "cup(s)"
    },
    

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
bread = Ingredient.all.find_by(name: "bread")
ava = Ingredient.all.find_by(name: "avocado")
parm = Ingredient.all.find_by(name: "grated parmesan")
bacon= Ingredient.all.find_by(name: "bacon")
pasta= Ingredient.all.find_by(name: "pasta")
ric = Ingredient.all.find_by(name: "ricotta chesse")
flour= Ingredient.all.find_by(name: "flour")
lem_juice=Ingredient.all.find_by(name: "lemon juice")
lem_zest = Ingredient.all.find_by(name: "lemon zest")
milk = Ingredient.all.find_by(name: "whole milk")
sugar = Ingredient.all.find_by(name: "sugar")
onion = Ingredient.all.find_by(name: "onion")
jack = Ingredient.all.find_by(name: "jack fruit")
bbq = Ingredient.all.find_by(name: "BBQ Sauce")
red = Ingredient.all.find_by(name: "red cabbage slaw")
bun = Ingredient.all.find_by(name: "buns")
pap = Ingredient.all.find_by(name: "paprika") 
bread_crumb = Ingredient.all.find_by(name: "bread crumbs")
heavy = Ingredient.all.find_by(name: "heavy cream")
straw= Ingredient.all.find_by(name: "strawberries")
van = Ingredient.all.find_by(name: "vanilla extract")
but_milk = Ingredient.all.find_by(name: "butter milk")
butter = Ingredient.all.find_by(name: "butter")


chickenParm = Recipe.create(
    name: "Chicken Parm",
    description: "Yummy chicken with mozz and marinara sauce",
    category: "Entree",
    image: "https://www.thecookierookie.com/wp-content/uploads/2019/04/crispy-chicken-parmesan-recipe-6-of-14.jpg",
    instructions: [["step 1"], ["step 2"], ["step 3"]],
    total_score: 0,
    total_ratings: 0
)


avo_t = Recipe.create(
    name: "Avocado Toast",
    description: "Simple and quick breakfast to kick off your morning!",
    category: "Breakfast",
    image: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2Fimage%2F2018%2F07%2Fmain%2F1807w-avocado-toast-recipe.jpg%3Fitok%3DiTXSfI1Z",
    instructions: [["Toast 2 slices of whole grain in a toaster until golden and crispy."], ["In a small bowl, mash avocado along with some salt and pepper"], ["Spread half of the mixture on each slice of toasted bread."]],
    total_score: 0,
    total_ratings: 0
)

pancake = Recipe.create(
    name: "Lemon Ricotta Pancakes",
    description: "Decadent and fluffy pancakes with a lemony twist",
    category: "Breakfast",
    image: "https://www.kyleecooks.com/wp-content/uploads/2019/05/Lemon-Ricotta-Pancakes-5.jpg",
    instructions: [["In the large bowl, whisk together dry ingredients: flour, sugar, and salt until well combined."], ["n the medium bowl, add the milk and ricotta and whisk until well blended. Then add the eggs, beating between each. Then add the lemon juice and lemon zest."], ["Make a well in the dry ingredients and add the blended wet ingredients – just fold it in gently, until JUST combined. Don’t over mix – you’ll have tough pancakes. We want fluffy pancakes!"],["Melt or brush butter onto a large griddle and heat to medium."],['Add pancake batter, a cup at a time (or smaller if you want smaller pancakes).'],['When you get bubbles, flip the pancakes over and cook on the other side. Should be a minute or two per side, and golden brown.']],
    total_score: 0,
    total_ratings: 0
)

spag_carb = Recipe.create(
    name: "Spagetti Carbonara",
    description: "Perfectly cooked spagetti in a creamy egg sauce",
    category: "Entree",
    image: "https://static01.nyt.com/images/2021/02/14/dining/carbonara-horizontal/carbonara-horizontal-articleLarge-v2.jpg",
    instructions: [["Place a large pot of lightly salted water (no more than 1 tablespoon salt) over high heat, and bring to a boil. Fill a large bowl with hot water for serving, and set aside."], ["In a mixing bowl, whisk together the eggs, yolks and Parmesan. Season with a pinch of salt and generous black pepper."], ["Set the water to boil. Meanwhile, heat oil in a large skillet over medium heat, add the bacon, and sauté until the fat just renders, on the edge of crispness but not hard. Remove from heat and set aside."],["Add pasta to the water and boil until a bit firmer than al dente. Just before pasta is ready, reheat guanciale in skillet, if needed. Reserve 1 cup of pasta water, then drain pasta and add to the skillet over low heat. Stir for a minute or so."],["Empty serving bowl of hot water. Dry it and add hot pasta mixture. Stir in cheese mixture, adding some reserved pasta water if needed for creaminess. Serve immediately, dressing it with a bit of additional grated pecorino and pepper."]],
    total_score: 0,
    total_ratings: 0
)

egg_cake = Recipe.create(
    name: "Egg Cake",
    description: "A simple, yet challenging, desert you can enjoy for breakfast!",
    category: "Desert",
    image: "https://i.redd.it/4628jznr6ey41.jpg",
    instructions: [["Place all 12 eggs into a cake mold"], ["Bake the eggs in the oven at 250 degress for 15 minutes"], ["Allow to cool and enjoy with friends and family!"]],
    total_score: 0,
    total_ratings: 0
)

jack_bbq = Recipe.create(
    name: "BBQ Jack Fruit Sandwiches",
    description: "The ultimate party snack",
    category: "Entree",
    image: "https://cdn.loveandlemons.com/wp-content/uploads/2018/08/bbq-jackfruit-282x282.jpg",
    instructions: [["Prepare the jackfruit by pulling shredding the pieces with your hands (see photo), discarding any harder pieces of the core. In a large skillet, heat 1 tablespoon of olive oil to medium heat. Add the sliced onion and salt and cook, stirring occasionally, until soft, 8 to 10 minutes, turning down the heat as necessary. Next, add the shredded jackfruit and cook 5 minutes, stirring occasionally. If necessary, add a splash of water to keep it from sticking to the pan. Stir in the 1/2 cup water and half of the BBQ sauce. Turn the heat to low, cover, and let simmer for 20 minutes. Remove the cover and stir in half of the remaining BBQ sauce, reserving the rest for serving"], ["Assemlbe the sandwiches with a layer of the jackfruit and a layer of the red cabbage slaw."]],
    total_score: 0,
    total_ratings: 0
)

chicken_cutlet = Recipe.create(
    name: "Crispy Chicken Cutlets",
    description: "Crispy chicken cutlets have a golden brown crust on the outside, and are juicy on the inside.",
    category: "Entree",
    image: "https://butteryourbiscuit.com/wp-content/uploads/2019/01/crispy-chicken-cutlet-7-720x720.jpeg",
    instructions: [["In a small bowl add flour and cayenne pepper and whisk until combined."], ["In another small bowl whisk eggs"], ["In the final bowl add Panko, paprika, salt and pepper and mix until combined."], ['Dredge chicken tenders in flour, shake excess off and dip into egg. Finally dip into Panko crumbs and gently press. Repeat until done.'],['Heat a large skillet on medium and add coconut oil. Add chicken cutlets and cook 3 minutes then flip and cook another 3 minutes. If your crust is getting to brown reduce heat a bit.']],
    total_score: 0,
    total_ratings: 0
)

straw_cake = Recipe.create(
    name: "Strawberry Short-Cake",
    description: "Yummy chicken with mozz and marinara sauce",
    category: "Desert",
    image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F840004.jpg&q=85",
    instructions: [["Start with the strawberries: Stir the strawberries and 1/4 cup (50g) granulated sugar together in a large bowl. Cover and set in the refrigerator until ready to use. This time allows the strawberries to release their delicious juices."], ["Make the biscuits: Preheat oven to 425°F (218°C). Mix the flour, granulated sugar, baking powder, and salt together in a large bowl or in a large food processor. Whisk or pulse until combined. Add the cubed butter and cut into the dry ingredients with a pastry cutter or by pulsing several times in the processor. Pulse until coarse crumbs form. If you used a food processor, pour the mixture into a large bowl."], ["Pour buttermilk on top. Fold everything together with a large spoon or rubber spatula until it begins to come together. Do not overwork the dough. The dough will be shaggy and crumbly with some wet spots. Pour the dough and any dough crumbles onto a floured work surface and gently bring together with generously floured hands. Using floured hands or a floured rolling pin, flatten into a 1/2 inch thick rectangle as best you can. Cut into 2.75 or 3-inch circles with a biscuit cutter. (Tip: Do not twist the biscuit cutter when pressing down into the dough– this seals off the edges of the biscuit which prevents them from fully rising.) Re-roll any scraps until you have 10-12 biscuits. Note that I skipped re-rolling when photographing these steps, so you only see 9 in the picture above."],['Arrange in a 10-inch cast iron skillet (see note) or close together on a parchment paper or silicone baking mat lined baking sheet. Make sure the biscuits are touching.'],['Brush the tops with 2 Tablespoons heavy cream or buttermilk and sprinkle with coarse sugar. Bake for 15-18 minutes or until biscuits are golden brown on top. Remove from the oven and allow to cool for 10 minutes before assembling.'],['Make the whipped cream: Using a hand mixer or a stand mixer fitted with a whisk attachment, beat the heavy cream, 2 Tablespoons granulated sugar, and vanilla on medium-high speed until soft-medium peaks form, about 3 minutes.'],['Slice the biscuits in half and layer with strawberries and whipped cream. Serve immediately.']],
    total_score: 0,
    total_ratings: 0
)



# RecipeIngredient.create(quantity: 1, ingredient: chicken, recipe: chickenParm)
# RecipeIngredient.create(quantity: 2, ingredient: egg, recipe: chickenParm)
# RecipeIngredient.create(quantity: 2, ingredient: garlic, recipe: chickenParm)
RecipeIngredient.create(quantity: 1, ingredient: pasta, recipe: spag_carb)
RecipeIngredient.create(quantity: 1, ingredient: parm, recipe: spag_carb)
RecipeIngredient.create(quantity: 0.3, ingredient: bacon, recipe: spag_carb)
RecipeIngredient.create(quantity: 2, ingredient: egg, recipe: spag_carb)
RecipeIngredient.create(quantity: 2, ingredient: egg, recipe: pancake)
RecipeIngredient.create(quantity: 1, ingredient: milk, recipe: pancake)
RecipeIngredient.create(quantity: 2.5, ingredient: flour, recipe: pancake)
RecipeIngredient.create(quantity: 1.5, ingredient: ric, recipe: pancake)
RecipeIngredient.create(quantity: 2, ingredient: lem_juice, recipe: pancake)
RecipeIngredient.create(quantity: 0.5, ingredient: sugar, recipe: pancake)
RecipeIngredient.create(quantity: 1, ingredient: ava, recipe: avo_t)
RecipeIngredient.create(quantity: 12, ingredient: egg, recipe: egg_cake)
RecipeIngredient.create(quantity: 1, ingredient: jack, recipe: jack_bbq)
RecipeIngredient.create(quantity: 1, ingredient: onion, recipe: jack_bbq)
RecipeIngredient.create(quantity: 1, ingredient: red, recipe: jack_bbq)
RecipeIngredient.create(quantity: 12, ingredient: bun, recipe: jack_bbq)
RecipeIngredient.create(quantity: 1, ingredient: chicken, recipe: chicken_cutlet)
RecipeIngredient.create(quantity: 0.5, ingredient: flour, recipe: chicken_cutlet)
RecipeIngredient.create(quantity: 2, ingredient: egg, recipe: chicken_cutlet)
RecipeIngredient.create(quantity: 1.5, ingredient: bread_crumb, recipe: chicken_cutlet)
RecipeIngredient.create(quantity: 2, ingredient: pap, recipe: chicken_cutlet)
RecipeIngredient.create(quantity: 30, ingredient: straw, recipe: straw_cake)
RecipeIngredient.create(quantity: 1.5, ingredient: sugar, recipe: straw_cake)
RecipeIngredient.create(quantity: 3, ingredient: flour, recipe: straw_cake)
RecipeIngredient.create(quantity: 12, ingredient: butter, recipe: straw_cake)
RecipeIngredient.create(quantity: 1, ingredient: heavy, recipe: straw_cake)
RecipeIngredient.create(quantity: 1, ingredient: but_milk, recipe: straw_cake)
RecipeIngredient.create(quantity: 1.5, ingredient: van, recipe: straw_cake)

 