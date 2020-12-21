# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Hunter')
User.create(name: 'Dana')
User.create(name: 'Nick Saban')

Recipe.create(name: 'Apples', user_id: 1)
Recipe.create(name: 'Bananas', user_id: 2)
Recipe.create(name: 'Pears', user_id: 3)

Ingredient.create(name: 'Taco')
Ingredient.create(name: 'Brownies')
Ingredient.create(name: 'Beef Wellington')

Rijoin.create(recipe_id: 1, ingredient_id: 1)
Rijoin.create(recipe_id: 2, ingredient_id: 2)
Rijoin.create(recipe_id: 3, ingredient_id: 3)