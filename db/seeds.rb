# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.delete_all
Meeting.delete_all
Run.delete_all
User.delete_all

user_one = User.create!(email: 'soph@example.com', password: '123456')
run_one = Run.create!(route: 'the block', length: '5km', pace: "4:30", duration: "not so long")
meeting_one = Meeting.create!(user_id: user_one.id, run_id: run_one.id)
# review_one = Review.create!(vibe_rating: "nice", route_rating: "very nice", challenge_rating: "not easy", user_id: user_one.id , meeting_id: meeting_one.id)

user_two = User.create!(email: 'arthur@example.com', password: '123456')
run_two = Run.create!(route: 'the park', length: '4km', pace: "4:20", duration: "not so long")
meeting_two = Meeting.create!(user_id: user_two.id, run_id: run_two.id)
# review_two = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_two.id , meeting_id: meeting_two.id)

user_three = User.create!(email: 'johanna@example.com', password: '123456')
run_three = Run.create!(route: 'the city center', length: '24km', pace: "4:20", duration: "longrun")
meeting_three = Meeting.create!(user_id: user_three.id, run_id: run_three.id)
# review_three = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_three.id , meeting_id: meeting_three.id)

user_four = User.create!(email: 'anna1@example.com', password: '123456')
run_four = Run.create!(route: 'Isar', length: '41km', pace: "4:20", duration: "longrun")
meeting_four = Meeting.create!(user_id: user_four.id, run_id: run_four.id)
# review_four = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_four.id , meeting_id: meeting_four.id)

# mike = User.create!(email: "mike@mike.com", password: "password")
# james = User.create!(email: "james@james.com", password: "password")
# buddy_pair = BuddyConnection.create!(user_2_id: mike, user_1_id: james)

