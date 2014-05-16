class UsersController < ApplicationController

  # new_user_path - GET - /users/new(.:format)
  def new
    @user = User.new
  end

  # users_path - POST - /users(.:format)
  def create
    @user = User.new(user_params)
    @user.bookmark_token = User.bookmark_token
    collection = Collection.first_default
    category = Category.first_default
    link = Link.first_default
    annotation = Annotation.first_default
    if @user.save
      @user.annotations << annotation
      link.annotations << annotation
      category.links << link
      collection.categories << category
      @user.collections << collection
      redirect_to "/users/#{@user.id}"
    else
      render :new
    end
  end

  # edit_user_path - GET - /users/:id/edit(.:format)
  def edit
    @user = User.find(params[:id])
  end

  # user_path - PATCH - /users/:id(.:format)
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to root_path #TODO: Might make more sense to redirect to another page. Revisit.
    else
      render :new
    end
  end

  # user_path - DELETE - /users/:id(.:format)
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end

  # users_path - GET - /users(.:format)
  def index
    @users = User.all
  end

  # user_path - GET - /users/:id(.:format)
  def show
    @user = User.find(params[:id])
    @link = Link.new
  end

private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      )
  end
end
