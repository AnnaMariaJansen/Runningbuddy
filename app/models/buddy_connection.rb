class BuddyConnection < ApplicationRecord
  belongs_to :user, foreign_key: "user_1_id"
  belongs_to :user, foreign_key: "user_2_id"
  belongs_to :user
end
