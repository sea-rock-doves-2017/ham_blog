class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render 'articles/index'
  end

  def show
    'hi'
  end

  def update
  end
end
