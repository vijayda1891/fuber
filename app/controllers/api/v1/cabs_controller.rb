class Api::V1::CabsController < ApplicationController
	protect_from_forgery with: :null_session

	def end_ride
		@ride = Ride.where(id: params[:id]).first
		@lat_1 = @ride.pickup[0]
		@lon_1 = @ride.pickup[1]
		@lat_2 = @ride.drop[0]
		@lon_2 = @ride.drop[1]
		ride_distance = Geocoder::Calculations.distance_between(@lat_1, @lon_1, @lat_2, @lon_2, options{})
		if @ride.color == "pink"
			@ride.ride_amount = 7 * ride_distance
			@ride.cab.status = 0
			@ride.update
			render :json => { message: "Ride Amount is #{7 * ride_distance} dogecoin"}, status: 200
		else
			@ride.ride_amount = 2 * ride_distance
			@ride.cab.status = 0
			@ride.update
			render :json => { message: "Ride amount is #{2 * ride_distance} dogecoin"}, status: 200
		end
	end

end