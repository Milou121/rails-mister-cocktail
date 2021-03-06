# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

20.times do
  name = Faker::Hipster.words(2).join(" ")
  Cocktail.create(name: name)
end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "lime")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rum")
Ingredient.create(name: "gin")
Ingredient.create(name: "cucumber")
Ingredient.create(name: "pepper")
Ingredient.create(name: "strawberries")
Ingredient.create(name: "vermouth")
Ingredient.create(name: "triple sec")
Ingredient.create(name: "tequilla")



