class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['post_picture']


  version :card do
    resize_to_fill(400, 300)
  end


end
