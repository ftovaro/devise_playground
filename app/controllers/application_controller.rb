class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def after_sign_in_path_for(resource)
    if resource.admin?
      return dashboard_path
    end

    root_path
  end
end
