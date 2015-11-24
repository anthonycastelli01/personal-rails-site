class ArticlesController < ApplicationController
  def index
    @controller = "articles_controller"
    @articles = Article.all().reverse()
    @recent_articles = @articles.first(5)
  end

  def show
    @controller = "articles_controller"
    @article = Article.find(params[:id])
  end

  def new
    @controller = "articles_controller"
    @article = Article.new
  end

  def edit
    @controller = "articles_controller"
    @article = Article.find(params[:id])
  end

  def create
    @controller = "articles_controller"
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @controller = "articles_controller"
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :subheading, :text)
    end
end
