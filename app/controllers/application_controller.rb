class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @curent_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def require_user
    if current_user
      true
    else
      redirect_to new_user_session_path, notice: "You must be logged in to register"
    end
  end
end
