class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    user_dashboards_path
  end
  def after_sign_up_path_for(resource)
    new_user_session_path
  end
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
  def ensure_signup_complete
    redirect_to user_dashboards_path
  end
end
