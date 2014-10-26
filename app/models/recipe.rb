class Recipe < ActiveRecord::Base
  belongs_to  :author, :class_name => "User", foreign_key: :user_id
  has_many    :recipe_tags
  has_many    :tags, through: :recipe_tags

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true
end
