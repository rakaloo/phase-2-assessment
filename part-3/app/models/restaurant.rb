class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :owner, class_name: "User"

  validates :name, :address, :city, :state, :zip, :owner_id, presence: true

  def short_address
    "#{self.city}, #{self.state}"
  end

  def full_address
    "#{self.address}, #{self.city}, #{self.state}, #{zip}"
  end

  def reviewed_by?(user)
    self.reviews.where(author_id: user.id).any?
  end
end
