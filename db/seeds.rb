# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restriction.create(name: "Vegan")
Restriction.create(name: "Vegetarian")
Restriction.create(name: "Gluten Free")
Restriction.create(name: "Pescatarian")

User.create(first_name: "Tali", username: "tangyzip", age: 32, city: "Denver", profile_pic: "profile_default.jpg", bio: "loving that foodie life.", password: "12345")
User.create(first_name: "Matt", username: "mattymatt", age: 28, city: "NYC", profile_pic: "profile_default.jpg", password: "12345")
User.create(first_name: "Naomi", username: "naomi", age: 29, city: "NYC", profile_pic: "profile_default.jpg", password: "12345")
User.create(first_name: "Mica", username: "mica", age: 28, city: "Brooklyn", profile_pic: "profile_default.jpg", password: "12345")
