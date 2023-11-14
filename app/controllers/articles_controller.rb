class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @articles = Article.new
  end

  def show
    @articles = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
