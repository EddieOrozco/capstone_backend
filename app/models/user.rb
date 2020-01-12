class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  # validates :name, presence: true
  # validates :password, length: { 6..20 }

  has_many :cars
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :received_messages, class_name: "Message", foreign_key: "receiver_id"
  has_many :requests
  belongs_to :shop, optional: true
end
