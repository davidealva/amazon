class ArticlesController < ApplicationController

  # GET /articles
  # GET /articles.json
  def index
    @search = Article.ransack(params[:q])
    @articles = @search.result
  end

  def show
    @article = Article.find(params[:id])
  end

end
