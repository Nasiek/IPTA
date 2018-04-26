class ShipsController < ApplicationController
  def index
      @ship = Ship.all
  end
def create
s = Ship.new
s.avatar = params[:file]
end
  def show
      @ship = Ship.find(params[:id])
  end

  def edit
      @user = current_user
      @ship = current_user.ships.find(params[:id])
  end



  def delete
  end



end
