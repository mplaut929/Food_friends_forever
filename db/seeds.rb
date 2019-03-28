# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restriction.find_or_create_by(name: "🥦 Vegan")
Restriction.find_or_create_by(name: "🥕 Vegetarian")
Restriction.find_or_create_by(name: "🍞❌ Gluten-Free")
Restriction.find_or_create_by(name: "🍣 Pescatarian")
# Restriction.create(name: "None")

FavCuisine.find_or_create_by(name: "American")
FavCuisine.find_or_create_by(name: "Chinese")
FavCuisine.find_or_create_by(name: "Japanese")
FavCuisine.find_or_create_by(name: "Thai")
FavCuisine.find_or_create_by(name: "Italian")
FavCuisine.find_or_create_by(name: "Mexican")
FavCuisine.find_or_create_by(name: "Middle Eastern")
FavCuisine.find_or_create_by(name: "Ethiopian")
FavCuisine.find_or_create_by(name: "I like Everything!")
FavCuisine.find_or_create_by(name: "Other")

EatingLocation.find_or_create_by(name: "Eat out")
EatingLocation.find_or_create_by(name: "Eat in")
EatingLocation.find_or_create_by(name: "Both eat out and stay in")

Meal.find_or_create_by(name: "Breakfast")
Meal.find_or_create_by(name: "Lunch")
Meal.find_or_create_by(name: "Dinner")
Meal.find_or_create_by(name: "Brunch")
Meal.find_or_create_by(name: "No Preference")

Shopping.find_or_create_by(name: "Whole Foods")
Shopping.find_or_create_by(name: "Trader Joe's")
Shopping.find_or_create_by(name: "Walmart")
Shopping.find_or_create_by(name: "My mom does my shopping for me")
Shopping.find_or_create_by(name: "Farmers' Market")
Shopping.find_or_create_by(name: "No Preference")

Avatar.find_or_create_by(name: "egg_faces.jpg", title: "Eggs with faces")
Avatar.find_or_create_by(name: "mouth.jpg", title: "Fake Teeth Eating Donut")
Avatar.find_or_create_by(name: "peas-smile.jpg", title: "A smile made from peas")
Avatar.find_or_create_by(name: "pineapple.jpg", title: "Cool pineapple")
Avatar.find_or_create_by(name: "pineapple2.jpg", title: "Smaller, cool pineapple")
Avatar.find_or_create_by(name: "profile_default.jpg", title: "Happy Toast")
Avatar.find_or_create_by(name: "profile2.jpg", title: "Fox on Toast")
#
# User.find_or_create_by(first_name: "Tali", username: "tali", age: 32, city: "Denver", password_digest: "1", fav_cuisine_id: 51, eating_location_id: 13, meal_id: 16, shopping_id: 19, avatar_id: 1)
# User.find_or_create_by(first_name: "Matt", username: "matt", age: 28, city: "NYC", password_digest: "1", fav_cuisine_id: 52, eating_location_id: 14, meal_id: 16, shopping_id: 20, avatar_id: 2)
# User.find_or_create_by(first_name: "Naomi", username: "naomi", age: 29, city: "Miami", password_digest: "1", fav_cuisine_id: 52, eating_location_id: 15, meal_id: 19, shopping_id: 21, avatar_id: 3)
# User.find_or_create_by(first_name: "Mica", username: "mica", age: 27, city: "Brooklyn", password_digest: "1", fav_cuisine_id: 53, eating_location_id: 15, meal_id: 20, shopping_id: 21, avatar_id: 4)
# User.find_or_create_by(first_name: "Tony", username: "tony", age: 27, city: "Hollywood", password_digest: "1", fav_cuisine_id: 53, eating_location_id: 15, meal_id: 20, shopping_id: 18, avatar_id: 5)
# User.find_or_create_by(first_name: "David", username: "david", age: 22, city: "Nashville", password_digest: "1", fav_cuisine_id: 55, eating_location_id: 16, meal_id: 20, shopping_id: 21, avatar_id: 6)
# User.find_or_create_by(first_name: "Andrew", username: "andrew", age: 27, city: "Brooklyn", password_digest: "1", fav_cuisine_id: 53, eating_location_id: 15, meal_id: 20, shopping_id: 21, avatar_id: 7)
# User.find_or_create_by(first_name: "Lisa", username: "Lisa", age: 21, city: "NYC", password_digest: "1", fav_cuisine_id: 57, eating_location_id: 13, meal_id: 20, shopping_id: 21, avatar_id: 3)
# User.find_or_create_by(first_name: "Anny", username: "Anny", age: 37, city: "Brooklyn", password_digest: "1", fav_cuisine_id: 60, eating_location_id: 14, meal_id: 20, shopping_id: 21, avatar_id: 2)
