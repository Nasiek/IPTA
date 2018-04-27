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
      @user = User.find(params[:id])
      @ship = current_user.ships.find(params[:ship_id])
  end

def personal
      @ship = Ship.find(params[:id])

end

  def delete
  end



end
