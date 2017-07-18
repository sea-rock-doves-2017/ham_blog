class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render 'articles/index'
  end

  def update
  end
end
