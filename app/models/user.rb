class User < ApplicationRecord
  has_many :messages
  has_many :comments
  has_many :comment_comments
end
