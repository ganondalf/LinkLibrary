class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && (user.password == (params[:password]))
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      render json: { message: 'Error! Please try again'}
    end
  end

  def creategoogle
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
