class LinksController < ApplicationController
  def create
    @link = Link.new
    @link.url = params[:linkUrl]
    @link.title = params[:linkTitle]
    @link.user_id = current_user.id
    @link.save
      render json: {response: @link}
  end
end
