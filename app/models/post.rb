class Post < ApplicationRecord
  belongs_to :user
  has_many :tags
  has_many :tags, through: :post_tag
end
