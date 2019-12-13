class Api::V1::CustomerController < ApplicationController
	protect_from_forgery with: :null_session
	before_action :set_customer, only: [:cab_booking]

	def cab_booking
		@ride = Ride.new
		ride_attr = {
			pickup: params[:pickup].geocode,
			drop: params[:drop].geocode,
			color: params[:color]
		}
		@ride.attributes = ride_attr
		@ride.valid?
		if @ride.errors.blank?
			@ride.save
			@ride.customer = @customer
			render :json => { message: "Searching for cabs near you"}, status: 200
		else
			render :json => { message: "Please Enter Correct address"}, status: 422
		end

	end

	def find_near_by_cab
		@ride = Ride.where(id: params[:id]).first
		@latitude = @ride.pickip[0]
		@longitude = @ride.pickup[1]
		
		@cab = Cab.Location.near([@latitude, @longitude], 4, :order => :distance).limit(1)
		if @ride.color == "pink" 
			if @cab.status == 1 && @cab.car_color == "pink"
				@ride.cab = @cab
				@ride.save!
				render :json => { message: "Cab is on its way to pick you up!" }, status: 200
			else
				render :json => { message: "No cabs available at the moment"}, status: 422
			end
		else
			render :json => { message: "No Pink cabs available at the moment"}, status: 422
		end
	end


	private

	def set_customer
		@customer = Customer.find_by_id(params[:id])
		if @customer.nil?
  			render :json=> {:message => "Unable to find Customer Id "}, :status=>422
  		end
	end

end