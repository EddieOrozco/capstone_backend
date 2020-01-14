class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  # validates :name, presence: true
  # validates :password, length: { 6..20 }

  has_many :selling_cars, foreign_key: "seller_id", class_name: "Car"
  has_many :bought_cars, foreign_key: "buyer_id", class_name: "Car"
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :received_messages, class_name: "Message", foreign_key: "receiver_id"
  has_many :requests
  belongs_to :shop, optional: true
end
