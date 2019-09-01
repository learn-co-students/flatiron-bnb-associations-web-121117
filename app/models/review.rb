class Review < ActiveRecord::Base
  belongs_to :guest, class_name: "User", foreign_key: "guest_id"
  belongs_to :reservation
end
