class ApplicationController < ActionController::Base
  # before_action :require_login
  helper_method :current_user

  def require_login
    redirect_to '/login' unless session.include? :user_id
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end
end
