class SecretsController < ApplicationController
  before_action :logged_in

  def show
    
  end

  private

  def logged_in
    if current_user.nil? || current_user != session[:name]
      redirect_to login_path
    end
  end
end