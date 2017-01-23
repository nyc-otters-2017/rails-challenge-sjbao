class Article < ApplicationRecord
  validates :title, :body, { presence: true }
  has_many :comments
  has_many :taggings
  has_many :tags, :through => :taggings

  def tag_list
    tags.join(', ')
  end

  def tag_list=(tags)
    parsed_tags = tags.split(',').map { |tag_string| tag_string.strip.downcase }
    self.tags = parsed_tags.map do |tag_name|
      Tag.find_or_create_by(name: tag_name)
    end
  end
end
