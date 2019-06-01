class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  has_many :favorites
  has_many :users, through: :favorites
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :horse_name, presence: true, length: { maximum: 20 }
  validates :post_comment, presence: true, length: { maximum: 100 }
end
