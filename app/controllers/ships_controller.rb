class ShipsController < ApplicationController
  def index
      @ship = Ship.all
  end

  def show
      @ship = Ship.find(params[:id])
  end

  def edit
      @user = User.find(params[:id])
      @ship = current_user.ships.find(params[:ship_id])
  end

  def create
  end

  def delete
  end



end
