# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restriction.create(name: "🥦 Vegan")
Restriction.create(name: "🥕 Vegetarian")
Restriction.create(name: "🍞❌ Gluten-Free")
Restriction.create(name: "🍣 Pescatarian")
# Restriction.create(name: "None🍽")

FavCuisine.create(name: "American")
FavCuisine.create(name: "Chinese")
FavCuisine.create(name: "Japanese")
FavCuisine.create(name: "Thai")
FavCuisine.create(name: "Italian")
FavCuisine.create(name: "Mexican")
FavCuisine.create(name: "Middle Eastern")
FavCuisine.create(name: "Ethiopian")
FavCuisine.create(name: "I like Everything!")
FavCuisine.create(name: "Other")

EatingLocation.create(name: "Eat out")
EatingLocation.create(name: "Eat in")
EatingLocation.create(name: "Both eat out and stay in")

Meal.create(name: "Breakfast")
Meal.create(name: "Lunch")
Meal.create(name: "Dinner")
Meal.create(name: "Brunch")
Meal.create(name: "No Preference")

Shopping.create(name: "Whole Foods")
Shopping.create(name: "Trader Joe's")
Shopping.create(name: "Walmart")
Shopping.create(name: "My mom does my shopping for me")
Shopping.create(name: "Farmers' Market")
Shopping.create(name: "No Preference")

# User.create(first_name: "Tali", username: "tangyzip", age: 32, city: "Denver", profile_pic: "profile_default.jpg", bio: "loving that foodie life.", password: "12345", fav_cuisine_id: 21)
# User.create(first_name: "Matt", username: "mattymatt", age: 28, city: "NYC", profile_pic: "profile_default.jpg", password: "12345", fav_cuisine_id: 22)
# User.create(first_name: "Naomi", username: "naomi", age: 29, city: "NYC", profile_pic: "profile_default.jpg", password: "12345", fav_cuisine_id: 23)
# User.create(first_name: "Mica", username: "mica", age: 28, city: "Brooklyn", profile_pic: "profile_default.jpg", password: "12345", fav_cuisine_id: 24)
