class Car < ApplicationRecord
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true
  has_many :images
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true
end
