class Run < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :parent, class_name: "Run", foreign_key: :parent_id, primary_key: :id, optional: true
  # has_many :reviews, through: :meetings, dependent: :destroy
  validates :user_id, presence: true
end
