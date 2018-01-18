class Review < ActiveRecord::Base
  has_one :reservation
  has_many :listings, through: :reservation

  belongs_to :guest, :class_name => "User"
end
