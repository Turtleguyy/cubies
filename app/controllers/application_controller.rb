class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize
    if current_user.nil?
      respond_to do |format|
        format.json { render json: { status: "Logged out." }, status: :unauthorized }
      end
    end
  end

end
