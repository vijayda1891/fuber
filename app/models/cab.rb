class Cab < ApplicationRecord
	enum status: { Unavailable: 0, Available: 1 }

	geocoded_by :address
	after_validation :geocode if: :address_changed?
	
	has_many :rides
end
