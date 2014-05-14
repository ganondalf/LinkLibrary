class WelcomeController < ApplicationController
  def index
    @user = User.new
    if session[:user_id]
      id = session[:user_id]
      redirect_to "/users/#{id}"
    end
  end
end
