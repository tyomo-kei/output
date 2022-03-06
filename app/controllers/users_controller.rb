class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @resolutions = @user.resolutions.order('created_at DESC')
  end
end

# user = User.find(params[:id])
# @nickname = user.nickname
# @resolutions = user.resolutions
