class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :author, class_name: "User"

  validates :rating, :content, presence: true
end
