class WelcomeController < ApplicationController
  def index
    if current_user
      id = current_user.id
      redirect_to "/users/#{id}"
    end
  end
end
