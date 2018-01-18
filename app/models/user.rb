class User < ActiveRecord::Base
  has_many :reservations, :foreign_key => 'listing_id'
  has_many :listings, :foreign_key => 'host_id'
  has_many :reviews, through: :reservations

  def trips
    self.reservations
  end


end
