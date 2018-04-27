class TripsController < ApplicationController
  def index
      @trip = Trip.all
      @user = User.all 
  end

  def show
      @trip = Trip.find(params[:id])
  end


  def edit
      @user = User.find(params[:id])
  end


  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    @trip.distance = calculate_distance(@trip)
    @trip.cost = calculate_cost(@trip)
    if @trip.save
    redirect_to "/trips/personal/#{@trip.id}"
    else redirect_to "/users/home"
  end

  end

  def delete
    @trip_delete = Trip.find(params[:id])
    @trip_delete.destroy
    redirect_to "/users/home"
  end

private
def trip_params
params.require(:trip).permit(:description, :destination, :origin, :seats)
  end


end
