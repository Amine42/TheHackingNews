require 'faker'

10.times do
  user = User.create!(first_name: Faker::Name.name,last_name: Faker::Name.last_name,email: Faker::Internet.email)
end

10.times do
  message = Message.create!(url: Faker::Internet.url, title: Faker::Name.title, user_id: rand(1..9))
end

10.times do
  comment = Comment.create!(message: Faker::Lorem.paragraph, user_id: rand(1..9), message_id: rand(1..9))
end

10.times do
  comment_comment = CommentComment.create!(message: Faker::Lorem.paragraph, user_id: rand(1..9), comments_id: rand(1..9))
end