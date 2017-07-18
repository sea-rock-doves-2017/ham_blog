class SessionsController < ApplicationController

  def new
  end

  def create
    redirect_to articles_path
  end

  def destroy
  end

end
