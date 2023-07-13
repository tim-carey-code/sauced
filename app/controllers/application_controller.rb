# fronzen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :turbo_frame_request?
  helper_method :turbo_native_app?

  protected

  def referrer_or_root
    request.referrer || root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email avatar])
  end
end
