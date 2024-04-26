class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def require_login
    return if current_user

    # flash[:alert] = 'You must be logged in to access this section'
    # redirect_to new_session_path
  end
end
