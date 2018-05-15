class ContractsController < ApplicationController


def create
	@relationship = ShipTrip.new(ship_trip_params)
	@trip = Trip.find(params[:ship_trip][:trip_id])
	@relationship.save
	p ship_trip_params
	redirect_to trip_path(@trip)

end


def destroy
end

private
def ship_trip_params
params.require(:ship_trip).permit(:ship_id, :trip_id)
end

end
