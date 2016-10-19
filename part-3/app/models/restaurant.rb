class Restaurant < ActiveRecord::Base
  belongs_to :owner, class_name: "User"

  validates :name, :address, :city, :state, :zip, :owner_id, presence: true

  def full_address
    "#{self.address}, #{self.city}, #{self.state}, #{zip}"
  end
end
