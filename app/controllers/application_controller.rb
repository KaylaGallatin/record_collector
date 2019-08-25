class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :authenticate_user!

  private

  def layout_by_resource
    if devise_controller? || controller_path == "home"
      "home"
    else
      "application"
    end
  end

  def after_sign_in_path_for(resource)
    resource || root_path
  end
end
