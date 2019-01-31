require 'faker' #on fait un require de la gem faker

# on fait 10 touts de boucles
10.times do
  # on remplis la table users avec des donnee cree par faker
  user = User.create!(first_name: Faker::Name.name,last_name: Faker::Name.last_name,email: Faker::Internet.email)
end

# on fait 10 touts de boucles
10.times do
  # on remplis la table messages avec des donnee cree par faker
  message = Message.create!(url: Faker::Internet.url, title: Faker::Name.title, user_id: rand(1..9))
end

# on fait 10 touts de boucles
10.times do
  # on remplis la table comment avec des donnee cree par faker
  comment = Comment.create!(message: Faker::Lorem.paragraph, user_id: rand(1..9), message_id: rand(1..9))
end

# on fait 10 touts de boucles
10.times do
  # on remplis la table CommentComment avec des donnee cree par faker
  comment_comment = CommentComment.create!(message: Faker::Lorem.paragraph, user_id: rand(1..9), comments_id: rand(1..9))
end