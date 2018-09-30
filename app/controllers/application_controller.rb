class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def authenticate_user!
    redirect_to user_session_path
  end
end
