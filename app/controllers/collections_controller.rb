class CollectionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @collection = Collection.new
  end

  def new
  end

  def create
    @collection = Collection.new(collection_params)
    user = User.find(current_user.id)
    user.collections << @collection
    if @collection.save
      respond_to do |format|
        format.js {}
      end
    else
      render :new
    end
  end

  private
  def collection_params
    params.require(:collection).permit(:name)
  end
end
