class Listing < ActiveRecord::Base
  belongs_to :host, class_name: "User", foreign_key: "host_id"
  belongs_to :neighborhood


  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations

end
