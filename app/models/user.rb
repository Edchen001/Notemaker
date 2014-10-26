class User < ActiveRecord::Base
  include BCrypt
  has_many :notes
  has_secure_password
end
