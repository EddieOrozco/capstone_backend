class Car < ApplicationRecord
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true
  has_many :images
  has_many :requests
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true

  def main_image
    if images.length > 0
      images[0].url
    else
      "http://www.macedonrangeshalls.com.au/wp-content/uploads/2017/10/image-not-found.png"
    end
  end
end
