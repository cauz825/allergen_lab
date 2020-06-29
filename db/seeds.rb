# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all
RecipeIngredient.destroy_all

20.times do
    Ingredient.create(name: Faker::Food.unique.ingredient)
end

10.times do
    User.create(name: Faker::Name.unique.first_name)
end

10.times do 
    Recipe.create(name: Faker::Food.unique.dish, user_id: User.all.sample.id)
end

25.times do
    RecipeIngredient.create(Recipe.all.sample.id, Ingredient.all.sample.id)
end



