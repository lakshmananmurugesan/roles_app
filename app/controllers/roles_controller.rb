class RolesController < ApplicationController
  before_filter :set_role, only: [:show, :edit, :update, :destroy]

  def index
    @roles = Role.all
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      redirect_to @role, :notice => "Successfully created a role"
    else
      render 'new'
    end
  end

  def edit 
  end

  def update
    @role = Role.find(params[:id])
    if @role.update(role_params)
      redirect_to @role
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @role.destroy
    redirect_to roles_path
  end

  private

  def role_params
    params.require(:role).permit(:name, :visibility)
  end

  def set_role
    @role = Role.find(params[:id])
  end
end