class CollectionsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @collection = Collection.new
  end
  def new

  end

  def create
    @collection = Collection.new(collection_params)

    if @collection.save
      user = User.find(current_user.id)
      user.collections << @collection
      render :json => { message: "Sign up successful!"}
    else
      render :json => { message: "Something went wrong. Please try again"}
    end
  end

  private

  def collection_params
    params.require(:collection).permit(:name)
  end
end
