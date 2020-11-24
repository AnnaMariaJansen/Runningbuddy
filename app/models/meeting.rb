class Meeting < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  has_many :reviews
end
