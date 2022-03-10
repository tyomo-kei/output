class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:user).order('created_at DESC')
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new_article_path
    end
  end

  def article_params
    params.require(:article).permit(:title, :content).merge(user_id: current_user.id)
  end


end
