class UsersController < ApplicationController

  def index
    @resolutions = Resolution.includes(:user).order('created_at DESC').limit(10)
    @articles = Article.includes(:user).order('created_at DESC').limit(10)
  end

  def show
    @user = User.find(params[:id])
    @resolutions = @user.resolutions.order('created_at DESC')
    @articles = @user.articles.order('created_at DESC')
  end

  def search
    @resolutions = Resolution.search(params[:keyword])
    @articles = Article.search(params[:keyword])
  end

 

end

# user = User.find(params[:id])
# @nickname = user.nickname
# @resolutions = user.resolutions
