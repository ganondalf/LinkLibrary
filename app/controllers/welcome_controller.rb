class WelcomeController < ApplicationController
  def index
    @user = User.new
    if session[:user_id]
      id = session[:user_id]
      redirect_to "/users/#{id}"
    end
  end

  def show
    @user = User.find(session[:user_id])
  end
end
