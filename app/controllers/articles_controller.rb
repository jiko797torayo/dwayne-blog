class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(body: article_params[:body], user_id: current_user.id)
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:body)
  end
end
