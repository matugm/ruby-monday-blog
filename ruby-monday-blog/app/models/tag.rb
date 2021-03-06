class Tag < ActiveRecord::Base
  has_many  :post_tags, inverse_of: :tag
  has_many  :posts, through: :post_tags
end
