class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :author, class_name: "User"

end
