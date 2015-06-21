class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to action: 'index', notice: 'Article was successfully created.'
    else
      render action: 'new', alert: 'Article could not be created'
    end
  end

  private
    def article_params
      params.require(:article).permit(:name, :avatar, :resume)
    end
end
