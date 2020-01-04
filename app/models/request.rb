class Request < ApplicationRecord
  belongs_to :car
  belongs_to :buyer, class_name: "User"
end
