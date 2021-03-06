class LocationsController < ApplicationController
  before_action :set_trip
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  
  def index
    @locations = @trip.locations
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = @trip.locations.new(location_params)

    if @location.save
      redirect_to [@trip, @location]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to new_trip_location_path(@trip, @location)
    else
      render :edit
    end
  end

  def destroy
    
    @location.destroy
    redirect_to trips_path
   
    
  end

  private
  def set_trip
    @trip = current_user.trips.find(params[:trip_id])
  end
  
  def set_location
    @location = Location.find(params[:id])
  end
  
  def location_params
    params.require(:location).permit(:name, :days, :trip_id)
  end
end
