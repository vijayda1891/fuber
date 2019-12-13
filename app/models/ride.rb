class Ride < ApplicationRecord
	geocoded_by :address
	after_validation :geocode if: :address_changed?
	
	belongs_to :cab
	belongs_to :customer
end
