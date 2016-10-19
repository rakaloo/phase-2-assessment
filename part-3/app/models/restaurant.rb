class Restaurant < ActiveRecord::Base
  belongs_to :owner, class_name: "User"

  validates :name, :address, :city, :state, :zip, :owner_id, presence: true
end
