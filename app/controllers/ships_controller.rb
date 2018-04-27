class ShipsController < ApplicationController
  before_action :authenticate_user!

  skip_before_action :verify_authenticity_token


  def index
      @ship = Ship.all
  end
def create
s = Ship.new
s.avatar = params[:file]
redirect_to users_home_path
end
  def show
      @ship = Ship.find(params[:id])

  end

  def edit
      @user = current_user
      @ship = Ship.find(params[:format])      
  end

def personal
      @ship = Ship.find(params[:id])

end

def update
@ship = Ship.find(params[:id])
@shipupdate = @ship.update(update_params)

redirect_to ship_path(@ship)
end

  def delete
  end

private
def update_params 
params.require(:update).permit(:veh_name, :veh_location, :seats, :avatar)
end



end
