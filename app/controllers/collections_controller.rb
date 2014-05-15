class CollectionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @collection = Collection.new
  end

  def new
  end

  def create
    user = User.find(params[:user_id])
    @collection = Collection.new(collection_params)
    if @collection.save
      category = @collection.categories.create(name: "General")
      user.collections << @collection
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
