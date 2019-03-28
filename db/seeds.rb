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

# User.create(first_name: "Tali", username: "tangyzip", age: 32, city: "Denver", profile_pic: "profile_default.jpg", bio: "loving that foodie life.", password: "12345", fav_cuisine_id: 21)
# User.create(first_name: "Matt", username: "mattymatt", age: 28, city: "NYC", profile_pic: "profile_default.jpg", password: "12345", fav_cuisine_id: 22)
# User.create(first_name: "Naomi", username: "naomi", age: 29, city: "NYC", profile_pic: "profile_default.jpg", password: "12345", fav_cuisine_id: 23)
# User.create(first_name: "Mica", username: "mica", age: 28, city: "Brooklyn", profile_pic: "profile_default.jpg", password: "12345", fav_cuisine_id: 24)
