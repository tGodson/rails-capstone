class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :not_blank?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    return if logged_in?

    flash[:alert] = 'you must be logged in to perfom that action'
    redirect_to login_path
  end
end
