class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters,if: :devise_controller?

  def index
    @rooms = Room.all
  end


  # protected

  # def configure_permitted_parameters
  # devise_parameter_sanitizer.permit(:sign_up){|u|
  # u.permit(:username,:email, :password, :password_confirmation)
  # }
  # end
end

