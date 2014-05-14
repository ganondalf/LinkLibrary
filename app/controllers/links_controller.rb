class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :enable_cross_origin_requests

  def create
    @link = Link.new({
      title: params[:title],
      url: params[:url],
      })
    if @link.save
      render json: { message: "success" }
    else
      render json: { message: "error" }
    end
  end

  def create_remotely
    # user = user.find_by(bookmarklet_token: params[:token])

    @link = User.find(1).links.create({
      url: params[:linkUrl],
      title: params[:linkTitle]
    })
    annotation = User.find(1).annotations.create({
      body: params[:linkAnnotation]
    })
    annotation.link = @link

    render json: { :response => @link }
  end

  private

  def enable_cross_origin_requests
    response.headers["Access-Control-Allow-Origin"] = "*"
    response.headers["Access-Control-Request-Method"] = "POST"
  end

  def link_params
    params.require(:link).permit(:url, :title, :user_id)
  end

end

# hard code which user is being modified
# try add an auth token to each bookmark request
# general
