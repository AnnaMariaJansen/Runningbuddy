#SEEDS YA
require 'open-uri'
# Review.delete_all
Meeting.delete_all
Run.delete_all
User.delete_all
Message.delete_all

user_one = User.create!(email: 'sophtest@example.com', password: '123456', name: "Soph", birthday: "02.12.1998" , gender: "F" , running_level: 1, avatar_url: "https://avatars0.githubusercontent.com/u/70213059?v=4")
file = URI.open('https://images.unsplash.com/photo-1571008887538-b36bb32f4571?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cnVubmluZ3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=1296&q=60')
user_one.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')

run_one = Run.create!(route: 'Schlosspark Nymphenburg', length: '7', pace: "slow", duration: "70 min", date: "28.11.2020", location: "Schloß Nymphenburg 1, 80638 München", user_id: user_one.id)
meeting_one = Meeting.create!(user_id: user_one.id, run_id: run_one.id)
# review_one = Review.create!(vibe_rating: "nice", route_rating: "very nice", challenge_rating: "not easy", user_id: user_one.id , meeting_id: meeting_one.id)

user_two = User.create!(email: 'arthur@example.com', password: '123456', name: "Arthur", birthday: "14.08.2002" , gender: "M" , running_level: 3, avatar_url: "https://avatars3.githubusercontent.com/u/70213112?v=4" )
run_two = Run.create!(route: 'Olympia Park Munich', length: '4', pace: "speedy", duration: "20 minutes", date: "29.11.2020", location: "Lerchenauer Str. 31, 80809 München", user_id: user_two.id)
meeting_two = Meeting.create!(user_id: user_two.id, run_id: run_two.id)
# review_two = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_two.id , meeting_id: meeting_two.id)

user_three = User.create!(email: 'johanna@example.com', password: '123456', name: "Johanna" , birthday: "11.01.1997" , gender: "F" , running_level: 4, avatar_url: "https://avatars0.githubusercontent.com/u/68535384?v=4" )
run_three = Run.create!(route: 'Isarvorstadt Block', length: '13', pace: "fast", duration: "one hour", date: "4.12.2020", location: "Baumstraße 10, 80469 München", user_id: user_three.id)
meeting_three = Meeting.create!(user_id: user_three.id, run_id: run_three.id)
# review_three = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_three.id , meeting_id: meeting_three.id)

user_four = User.create!(email: 'anna@example.com', password: '123456', name: "Anna" , birthday: "11.05.1989" , gender: "F" , running_level: 3, avatar_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1601933188/aowdwrdop6xuksfrwhus.jpg" )
run_four = Run.create!(route: 'Tegernsee', length: '9', pace: "average", duration: "60 min", date: "29.11.2020", location: "Tegernsee, Bayern, Deutschland", user_id: user_four.id)
meeting_four = Meeting.create!(user_id: user_four.id, run_id: run_four.id)
# review_four = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_four.id , meeting_id: meeting_four.id)

user_five = User.create!(email: 'benjamin@example.com', password: '123456', name: "Benjamin" , birthday: "03.11.1995" , gender: "M" , running_level: 2, avatar_url: "https://avatars0.githubusercontent.com/u/70630293?v=4" )
run_five = Run.create!(route: 'Frötmaninger Heide ', length: '11', pace: "relaxed", duration: "hour and a half", date: "10.12.2020", location: "Admiralbogen 47, 80939 München", user_id: user_five.id)
meeting_five = Meeting.create!(user_id: user_five.id, run_id: run_five.id)
# review_four = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_four.id , meeting_id: meeting_four.id)

user_six = User.create!(email: 'nedo@example.com', password: '123456', name: "Nedo" , birthday: "15.02.1997" , gender: "M" , running_level: 4, avatar_url: "https://avatars2.githubusercontent.com/u/68437832?v=4" )
run_six = Run.create!(route: 'Igls Trail Innsbruck', length: '15', pace: "indifferent", duration: "however long it takes", date: "13.12.2020", location: "Bilgeristraße 1, 6080 Innsbruck, Österreich", user_id: user_six.id)
meeting_six = Meeting.create!(user_id: user_six.id, run_id: run_six.id)
# review_four = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_four.id , meeting_id: meeting_four.id)

user_seven = User.create!(email: 'kate@example.com', password: '123456', name: "Kate" , birthday: "22.04.1996" , gender: "F" , running_level: 5, avatar_url: "https://avatars2.githubusercontent.com/u/71141115?v=4" )
run_seven = Run.create!(route: 'English Garden Munich', length: '2', pace: "very speedy", duration: "8 min", date: "1.12.2020", location: "Am Tucherpark 1, 80538 München", user_id: user_seven.id)
meeting_seven = Meeting.create!(user_id: user_seven.id, run_id: run_seven.id)
# review_four = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_four.id , meeting_id: meeting_four.id)

user_eight = User.create!(email: 'mario@example.com', password: '123456', name: "Mario" , birthday: "01.10.1989" , gender: "M" , running_level: 3 )
run_eight = Run.create!(route: 'English Garden', length: '4', pace: "average", duration: "half hour", date: "01.01.2021", location: "Osterwaldstraße 80805 München", user_id: user_eight.id)
meeting_eight = Meeting.create!(user_id: user_eight.id, run_id: run_eight.id)
# review_four = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_four.id , meeting_id: meeting_four.id)

user_nine = User.create!(email: 'zim@example.com', password: '123456', name: "Zim" , birthday: "28.06.1981" , gender: "M" , running_level: 5 )
run_nine = Run.create!(route: 'Trail outside Straßburg', length: '8', pace: "intervals", duration: "110 min", date: "20.12.2020", location: "5 Rue de la Gare, 67190 Mollkirch, Frankreich", user_id: user_nine.id)
meeting_nine = Meeting.create!(user_id: user_nine.id, run_id: run_nine.id)
# review_four = Review.create!(vibe_rating: "cool", route_rating: "too full", challenge_rating: "easy", user_id: user_four.id , meeting_id: meeting_four.id)
