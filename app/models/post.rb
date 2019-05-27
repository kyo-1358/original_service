class Post < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :horse_name, presence: true, length: { maximum: 20 }
  validates :post_comment, presence: true, length: { maximum: 100 }
end
