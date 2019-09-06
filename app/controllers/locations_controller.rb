class LocationsController < ApplicationController
  before_action :set_trip
  before_action :set_location only: [:show, :edit, :update, :destroy]
  
  def index
    @locations = trip_locations_path
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location - new_trip_location_path
    if @location.save
      redirect_to trip_locations_path
    else
      location :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @location.destroy
    redirect_to trip_locations_path
  end

  private
  def location_params
    params.require(:location).permit(:name, :days, :trip_id)
  end

  def set_location
    @location = Trip.find(params[:id])
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
