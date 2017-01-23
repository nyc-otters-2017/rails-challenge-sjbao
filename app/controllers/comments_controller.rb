class CommentsController < ApplicationController
  before_filter :require_login, except: [:create]
  include CommentsHelper
  def create
    @comment = Comment.new(comments_params)
    @comment.article_id = params[:article_id]

    if @comment.save
      redirect_to article_path(@comment.article)
    else
      @article = @comment.article
      render "articles/show"
    end
  end
end
