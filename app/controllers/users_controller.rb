class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.create(params[:user])
    if @user.valid?
      redirect_to '/main'
    else
      redirect_to :new, alert: @user.errors.full_messages.join
    end
  end

end