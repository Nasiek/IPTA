
class ShipsController < ApplicationController
  before_action :authenticate_user!

  skip_before_action :verify_authenticity_token


  def index
      @ship = Ship.all
  end

  def create
      #s = Ship.new
      #s.avatar = params[:file]
      #redirect_to users_home_path
      @ship = Ship.new(ship_params)
      @ship.user_id = current_user.id
      if @ship.save
          redirect_to users_home_path
        else redirect_to "/ships/feed"
      end
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

  def destroy
  @ship_delete = Ship.find(params[:id])
    @ship_delete.delete
    if @ship_delete.delete
      redirect_to "/users/home"
    end
  end

private
def update_params
params.require(:update).permit(:veh_name, :veh_location, :seats, :avatar)
end

def ship_params
params.require(:create).permit(:veh_name, :veh_location, :seats, :avatar)
  end

end
