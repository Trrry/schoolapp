class UsersController < ApplicationController

  def new
    @user = User.new
  end
  def show
    @user = @current_user
  end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to useredit_path(@user)
    else
      redirect_to 'users/new'
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(update_params)
      redirect_to 'users/new'
    else
      redirect_to 'users/:id/edit'
    end
  end
  private
  def user_params
    params.require(:user).permit(:email, :password, :role)
  end
    private
  def update_params
    params.require(:user).permit(:first_name, :last_name, :patronymic, :phone)
  end

end
