class AuthController < ApplicationController
  def index
    @user = User.new
  end
end