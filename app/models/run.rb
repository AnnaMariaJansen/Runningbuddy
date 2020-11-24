class Run < ApplicationRecord
  belongs_to :parent, class_name: "Run", foreign_key: :parent_id, primary_key: :id, optional: true
  has_many :reviews, through: :meetings
end
