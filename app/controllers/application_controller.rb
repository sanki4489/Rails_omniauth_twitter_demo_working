class ApplicationController < ActionController::Base
    #current user for reference
  def current_user
    @current_user ||= Tuser.find(session[:user_id]) if session[:user_id]
  end
    helper_method :current_user
end
