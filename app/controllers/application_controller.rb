class ApplicationController < ActionController::Base

 before_action :configure_permitted_parameters, if: :devise_controller?
 before_action :set_categories


private
  
  def set_categories
    @categories = Category.all
  end

protected

  def configure_permitted_parameters
    attributes = [:name, :surname,:username, :email, :avatar]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

  
    def current_user?(user)
      current_user.id == user.id
    end

    helper_method :current_user?

end
