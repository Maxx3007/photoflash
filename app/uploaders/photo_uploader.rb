class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['post_picture']

  version :standard do
    process :resize_to_fit => [900, 400, :north]
  end

  version :mobile do
    resize_to_fit(800, 400)
  end


end
