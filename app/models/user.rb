class User < ActiveRecord::Base
  include BCrypt

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /.+@.+\..{2,}/, message: "Invalid email" }, uniqueness: true
  has_many  :recipes
  has_many  :tags, through: :recipes

  has_secure_password
end
