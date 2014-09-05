class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index 
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email = params[:user][:email]
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have signed up successfully."
      redirect_to projects_path
    else
      render :new
    end 
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "User has been updated."
      redirect_to user_path
    else
      flash[:alert] = "User has not been updated."
      render action: "edit"
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
