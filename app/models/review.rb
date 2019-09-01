class Review < ActiveRecord::Base
  belongs_to :city
  belongs_to :neighborhood
  belongs_to :guest, :class_name => "User"
  belongs_to :reservation
end
