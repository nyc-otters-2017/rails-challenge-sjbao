class Tagging < ApplicationRecord
  belongs_to :article
  belongs_to :tag

  before_destroy { self.tag.delete }
end
