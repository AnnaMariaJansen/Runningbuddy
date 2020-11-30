class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :buddy_connection
end
