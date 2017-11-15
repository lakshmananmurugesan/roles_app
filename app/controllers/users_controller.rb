class UsersController < ApplicationController
  before_filter :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Successfully created a user"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit 
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :role_id, :profile_pic)
  end

  def set_user
    @user = User.find(params[:id])
  end
end