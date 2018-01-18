class User < ActiveRecord::Base
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings, :foreign_key => 'host_id'

  def trips
    Reservation.all
  end

  def reviews
    Review.all
  end
end
