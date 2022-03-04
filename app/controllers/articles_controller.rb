class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render json: @articles
  end

  def show
    @article = Article.find(params[:id])

    render json: @article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)


    if @article.save
      puts "saved!"
      render json: @article
    else
      puts "not saved!"
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
