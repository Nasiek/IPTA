class UsersController < ApplicationController

def create
@ship = Ship.new(params[:create])
if Ship.save
redirect_to users_home_path
end

def delete
	end

def edit
end

def show	
@ship = Ship.new
end

end
end
