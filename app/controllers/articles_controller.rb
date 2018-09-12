class ArticlesController < ApplicationController
  # before_action :authenticate_user!
  def index
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(body: article_params[:body], user_id: current_user.id)
    redirect_to root_path
  end

  def edit
    @article = Article.find(params[:id])
    unless user_signed_in? && @article.user_id == current_user.id
      redirect_to new_user_session_path
    end
  end

  def update
    article = Article.find(params[:id])
    if user_signed_in? && article.user_id == current_user.id
      article.update(article_params)
      redirect_to root_path
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    article = Article.find(params[:id])
    if user_signed_in? && article.user_id == current_user.id
      article.destroy
      redirect_to root_path
    else
      redirect_to new_user_session_path
    end
  end
  private
  def article_params
    params.require(:article).permit(:body)
  end
end
