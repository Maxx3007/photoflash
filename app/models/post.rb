class Post < ApplicationRecord
  validates_presence_of :image, :title
  has_many :comments, dependent: :destroy


  mount_uploader :image, PhotoUploader


end
