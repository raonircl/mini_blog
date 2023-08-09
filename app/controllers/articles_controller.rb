class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new 
    @article = Article.new
  end

  def create 
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: "Create new article!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.new.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :boby)
    end
end
