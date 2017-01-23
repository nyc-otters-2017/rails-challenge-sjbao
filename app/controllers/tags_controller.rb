class TagsController < ApplicationController
  def index
    Tag.includes(:taggings).where( :taggings => { :article_id => nil } ).destroy_all
    @tags =  Tag.order(:name).group_by { |tag| tag.name[0] }
  end

  def show
    @tag = Tag.find(params[:id])
    @articles = @tag.articles
    render 'articles/index'
  end

  def destroy

  end
end
