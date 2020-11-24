# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mike = User.create(email: "mike@mike.com", password: "password")
james = User.create(email: "james@james.com", password: "password")
BuddyConnection.create(user_2_id: mike, user_1_id: james)
