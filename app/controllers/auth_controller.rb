class AuthController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user=User.find_by_login(params[:user][:login])
    if @user.password==params[:user][:password]
      session[:user_id]=@user.id
      redirect_to '/products'
    else
      redirect_to :new, alert: @user.errors.full_messages.join
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_url
  end
end