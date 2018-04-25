class TripsController < ApplicationController
  def index
      @trip = Trip.all
  end

  def show
      @trip = Trip.find(params[:id])
  end


  def edit
      @user = User.find(params[:id])
  end


  def create
  end

  def delete
  end




end
