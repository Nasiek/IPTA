class ApplicationController < ActionController::Base
	include TripsHelper
	include ShipsHelper


	def sign_up_params
  		devise_parameter_sanitizer.sanitize(:sign_up)
	end

before_action :configure_permitted_parameters, if: :devise_controller?
protect_from_forgery with: :null_session


protected
  def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname, :email, :password, :password_confirmation])
  end


private
	def after_sign_out_path_for(resource_or_scope)
    root_path
  end

def after_sign_in_path_for(resource)
      users_home_path
end
end
