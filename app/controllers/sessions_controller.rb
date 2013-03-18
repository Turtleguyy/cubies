class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_user_name(params[:user_name])
    respond_to do |format|
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        format.json { render json: user, status: :created }
      else
        format.json { render json: { status: "Invalid user name or password" }, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if session[:user_id]
        user = User.find(session[:user_id])
        session[:user_id] = nil
        format.json { render json: user, status: :ok }
      end
    end
  end

  def check_login
    respond_to do |format|
      if session[:user_id]
        user = User.find(session[:user_id])
        format.json { render json: user, status: :ok }
      else
        format.json { render json: { status: "Logged out." }, status: :unauthorized }
      end
    end
  end
end
