class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
  def prototypes_params
    params.require(:prototypes).permit(:content, :image).merge(user_id: current_user.id)
  end
end
