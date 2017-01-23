class Author < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
  validates :username, :email, :password, { presence: true }
  validates :username, :email, { :uniqueness => true }
end
