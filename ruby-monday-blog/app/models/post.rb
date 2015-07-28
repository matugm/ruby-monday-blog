class Post < ActiveRecord::Base

  has_attached_file :image, styles: {:thumb => "100x100>"}
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_many :post_tags, inverse_of: :post
  has_many :tags, through: :post_tags

  validates :body, presence: true
  validates :title, presence: true
  
  accepts_nested_attributes_for :tags

end
