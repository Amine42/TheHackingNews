class User < ApplicationRecord
  has_many :messages # on dit qu'un utilisateur peut avoir plusieurs messages
  has_many :comments # on dit qu'un utilisateur peut avoir plusieurs commentaires
  has_many :comment_comments # on dit qu'un utilisateur peut commenter plusieurs commentaires
end
