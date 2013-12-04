class LocationsController < ApplicationController

	def index
		@places = Location.all
	end

	def show
		@place = Location.find_by_id(:id)
	end

	def new
		@place = Location.new
	end

	def create
		place = Location.new(loc_params)
		place.save
		redirect_to root_path
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private 
	def loc_params
		params.require(:location).permit(:name,:picture_url,:review)
	end
end