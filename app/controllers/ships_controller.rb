class ShipsController < ApplicationController
  def index
  end
def create
s = Ship.new
s.avatar = params[:file]
end
  def show

  end

def edit
end
end
