class ShipsController < ApplicationController
  def index
  end

  def show

  end

  def edit
      @user = User.find(params[:id])
      @ship = current_user.ships.find(params[:ship_id])
  end


end
