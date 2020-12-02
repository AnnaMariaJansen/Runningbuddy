class Run < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user
  belongs_to :parent, class_name: "Run", foreign_key: :parent_id, primary_key: :id, optional: true
  # has_many :reviews, through: :meetings, dependent: :destroy
  has_many :meetings
  has_many :users, through: :meetings

  validates :user_id, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :route, :location, :duration, :date, :length, :pace ],
    associated_against: {
      user: [ :name, :gender, :running_level ],
      users: [ :name, :gender, :running_level ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
