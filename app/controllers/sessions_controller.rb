class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to action: 'new'
    else
      session[:name]= params[:name]
    end
  end

  def destroy
    unless current_user == nil
    session.delete :name
  end
end




end
