class LocationsController < ApplicationController

	def index
		@places = Location.all
	end

	def show
		@place = Location.find_by_id(params[:id])
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
		@place = Location.find_by_id(params[:id])
	end

	def update
		place = Location.find_by_id(params[:id])
		place.update(loc_params)
		redirect_to root_path
	end

	def destroy
		place = Location.find_by_id(params[:id])
		place.destroy
		redirect_to root_path
	end

	private 
	def loc_params
		params.require(:location).permit(:name,:picture_url,:review)
	end
end