class ApplicationController < ActionController::Base
	include TripsHelper

private 
	def after_sign_out_path_for(resource_or_scope)
    root_path
  end

def after_sign_in_path_for(resource)
      users_home_path
end
end
