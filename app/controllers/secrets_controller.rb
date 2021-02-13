class SecretsController < ApplicationController
  before_action :logged_in

  def show
    @current_user = current_user
  end

  private

  def logged_in
    if current_user.nil? || current_user != session[:name]
      redirect_to login_path
    end
  end
end