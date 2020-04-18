class Post < ApplicationRecord
  validates_presence_of :image, :title

  mount_uploader :image, PhotoUploader

end
