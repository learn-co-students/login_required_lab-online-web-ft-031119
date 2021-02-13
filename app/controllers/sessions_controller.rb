class SessionsController < ApplicationController
  def index
    if current_user
      @message = "Hi #{current_user}"
    else
      redirect_to login_path
    end
  end

  def new
  end

  def create
    username = params[:name]
    if username.nil? || username == ""
      redirect_to login_path
    else
      session[:name] = username
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to root_path
  end

end