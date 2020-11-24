# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.delete_all
Run.delete_all
User.delete_all

user_one = User.create(email: 'soph@example.com', password: '123456')
run_one = Run.create(route: 'the block', length: '5km', pace: "4:30", duration: "not so long")
# meeting_one = Meeting.create
review_one = Review.create(vibe_rating: "nice", route_rating: "very nice", challenge_rating: "not easy")

user_two = User.create(email: 'arthur@example.com', password: '123456')
run_two = Run.create(route: 'the park', length: '4km', pace: "4:20", duration: "not so long")
# meeting_two
review_two = Review.create(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy")


