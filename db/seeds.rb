# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'JSON'
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
objs = JSON.parse(json)
objs["drinks"].each do |obj|
  Ingredient.create(name: obj.values.last)
end

# lime_juice = Ingredient.create(name: "Lime juice")
# light_rum = Ingredient.create(name: "Light rum")
# sugar = Ingredient.create(name: "Sugar")
# mint = Ingredient.create(name: "Mint")
# fizzy_water = Ingredient.create(name: "Carbonated Water")
# lemon_juice = Ingredient.create(name: "Lemon juice")
# brandy = Ingredient.create(name: "Brandy")
# red_wine = Ingredient.create(name: "Red wine")

# mojito = Cocktail.create(name: 'Mojito')

# Dose.create(cocktail: mojito, ingredient: lime_juice, description: "1 lime's worth")
# Dose.create(cocktail: mojito, ingredient: light_rum, description: "100ml")
# Dose.create(cocktail: mojito, ingredient: sugar, description: "1 tsp")
# Dose.create(cocktail: mojito, ingredient: mint, description: "1 clove")
# Dose.create(cocktail: mojito, ingredient: fizzy_water, description: "10ml")

# sangria = Cocktail.create(name: 'Sangria')

# Dose.create(cocktail: sangria, ingredient: lemon_juice, description: "2 lemons' worth")
# Dose.create(cocktail: sangria, ingredient: brandy, description: "100ml")
# Dose.create(cocktail: sangria, ingredient: red_wine, description: "750ml")
# Dose.create(cocktail: sangria, ingredient: sugar, description: "3 tsp")
# Dose.create(cocktail: sangria, ingredient: fizzy_water, description: "300ml")
