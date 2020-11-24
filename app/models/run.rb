class Run < ApplicationRecord
  belongs_to :parent, foreign_key: "parent_id", optional: true
  belongs_to :meetings
  has_many :reviews, through: :meetings
end
