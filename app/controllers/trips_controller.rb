class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = current_user.trips
  end

  def show
  end

  def new
    @trips = Trips.new 
  end

  def create 
    @trips = current_user.trips.new(trip_params)
    if @trip.save
      rediret_to trips_path
    else 
      render :new 
    end 
  end 

  def edit
  end

  def update 
    if @trip.updates(trip_params)
      redirect_to trips_path(@trips)
    else 
      render :edit
    end 
  end

  def destroy 
    @trip.destroy
    redirect_to trips_path
  end

  private 
  def trip_params
    params.require(trip).permit(:name,:start_date, :end_date)
  end
  
  def set_trip
    @trip = current_user.trips.find(params[:id])
  end

end

