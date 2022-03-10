class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.create(user_params)
    @user.role="customer"
    @user.save
    if @user.valid?
       session[:user_id]=@user.id
       redirect_to '/auth'
    else
      redirect_to :new, alert: @user.errors.full_messages.join
    end
  end
  private

  def user_params
    params.require(:user).permit(:name, :login, :password)

  end
end