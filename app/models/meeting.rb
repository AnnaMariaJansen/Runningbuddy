class Meeting < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  belongs_to :run
  has_many :reviews, dependent: :destroy
end
