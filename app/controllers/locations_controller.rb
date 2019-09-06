class LocationsController < ApplicationController
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
  def
  end

  def
  end

  def
  end
end
