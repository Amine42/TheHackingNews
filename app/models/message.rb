class Message < ApplicationRecord
  belongs_to :user
  has_many :comments #on dit qu'un message peut avoir plusieurs commentaires
end
