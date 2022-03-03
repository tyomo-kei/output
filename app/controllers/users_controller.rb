class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @resolutions = @user.resolutions
  end
end


# user = User.find(params[:id])
# @nickname = user.nickname
# @resolutions = user.resolutions