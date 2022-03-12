



class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: {status: true, message: 'articles loaded', data: @articles}
  end

  def show
    @article = Article.find(params[:id])

    if @article
      render json: {status: true, message: 'article loaded', data: @article}
    else
      render json: {status: false, message: 'article not loaded', data: @article.errors}
    end
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      render json: {status: true, message: 'articles saved', data: @article}
    else
      render json: {status: false, message: 'article not saved', data: @article.errors}
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      render json: {status: true, message: 'article updated', data: @article}
    else
      render json: {status: false, message: 'article not updated', data: @article.errors}
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      render json: {status: true, message: 'article destroyed', data: @article}
    else
      render json: {status: false, message: 'article not destroyed', data: @article.errors}
    end
  end

  private
    def article_params
      params.permit(:title, :body)
    end
end
