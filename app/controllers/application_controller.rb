class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :ensure_logged_in

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def ensure_logged_in
    unless current_user
      flash[:error] = "Sorry, you need to be logged in."
      redirect_to root_url
    end
  end


  def ensure_admin
    unless current_user && current_user.admin?
      flash[:error] = "Sorry, you're not authorized to do that."
      redirect_to realtors_url
    end
  end

end
