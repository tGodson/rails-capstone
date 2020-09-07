class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @created_transactions = @user.created_transactions
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.notice = "Account created succesfully welcome #{@user.username}.Please sign in."
      redirect_to login_path
    else
      flash.now[:notice] = 'Please enter your name'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
