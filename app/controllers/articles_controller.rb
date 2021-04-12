class ArticlesController < ApplicationController

  def index
    @category = Category.find(params[:cat])
    @articles = @category.articles.order_by_most_recent.includes(:author)
    @category.priority += 1
    @category.save
  end

  def new
    @article = current_user.articles.build
    @categories = Category.all
  end
end
