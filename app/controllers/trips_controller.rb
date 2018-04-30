class TripsController < ApplicationController
  before_action :authenticate_user!

  skip_before_action :verify_authenticity_token



  def index
      @trip = Trip.all
      @user = User.all
  end

  def show
      @trip = Trip.find(params[:id])
  end
def personal
@trip = Trip.find(params[:id])
end

  def edit
      @user = current_user
      @trip = Trip.find(params[:format])
  end


  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    @trip.distance = calculate_distance(@trip)
    @trip.cost = calculate_cost(@trip)
    if @trip.save
        if params[:ship_id]
            join = ShipTrip.new(ship_id: params[:ship_id], trip_id: @trip.id)
            if join.save
                seat_counter(Ship.find(params[:ship_id]), @trip)
            end
        end
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
params.require(:create).permit(:description, :destination, :origin, :seats)
  end



end
