class Listing < ActiveRecord::Base
  has_many :reservations
  has_many :guests, through: :reservations
  has_many :reviews, through: :reservations
  # , source: :guest, :class_name => 'User'
  belongs_to :host, :class_name => 'User'
  belongs_to :neighborhood
end
