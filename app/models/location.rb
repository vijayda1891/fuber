class Location < ApplicationRecord
	belongs_to :cab
	belongs_to :customer
end
