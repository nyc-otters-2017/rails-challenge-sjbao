class ArticlesController < ApplicationController
  include ArticlesHelper
  before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
    @comment = Comment.new
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash.notice = "Article '#{@article.title}' Created!"
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash.notice = "Article '#{@article.title}' Updated!"
      redirect_to article_path
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id]).destroy
    flash.notice = "Article '#{@article.title}' Deleted."
    redirect_to '/articles'
  end
end
