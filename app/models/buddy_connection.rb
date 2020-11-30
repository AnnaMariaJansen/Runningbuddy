class BuddyConnection < ApplicationRecord
  belongs_to :user_1, class_name: "User", foreign_key: :user_1_id, primary_key: :id
  belongs_to :user_2, class_name: "User", foreign_key: :user_2_id, primary_key: :id
  has_one :chatroom, dependent: :destroy
  # after_create :create_cha
  # validates presence once #consider two colums and rails console
  validates :user_1_id, uniqueness: { scope: :user_2_id }
end
