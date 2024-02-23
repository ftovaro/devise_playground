class Users::RegistrationsController < Devise::RegistrationsController
  before_action :allow_role_param, only: :create
  before_action :set_role, only: :create

  private

  def set_role
    if params.dig("user", "email")&.include?("housecallpro")
      params["user"]["role"] = "admin"
    end
  end

  protected

  def allow_role_param
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end
end
