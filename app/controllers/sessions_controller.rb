class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:name])
    session[:user_id] = user.id
    redirect_to articles_path
  end

  def destroy
    session.clear
    redirect_to articles_path
  end

end
