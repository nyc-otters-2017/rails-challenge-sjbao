class TagsController < ApplicationController
  def index
    @tags =  Tag.order(:name).group_by { |tag| tag.name[0] }
  end

  def show

  end

  def destroy

  end
end
