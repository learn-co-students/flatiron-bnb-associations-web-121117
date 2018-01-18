class Listing < ActiveRecord::Base
  #belongs_to :guest, :class_name => "User"
  belongs_to :host, :class_name => "User"

  has_one :neighborhood
  has_one :city, through: :neighborhood

  # guest has many trips
  # a trip is an alias for Reservation
  has_many :trips, class_name: "Reservation"
  has_many :reviews, through: :trips

  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, class_name: "User", through: :reservations
end
