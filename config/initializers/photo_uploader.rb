# encoding: utf-8
Spina::PhotoUploader.class_eval do
  include CarrierWave::MiniMagick

  version :image do
    process resize_to_fit: [800, 450]
    process quality: 82
    process :optimize
  end

  version :background do
    process resize_to_fit: [1600, 900]
    process quality: 82
    process :optimize
  end

  version :large_image do
    process resize_to_fit: [1024, 600]
    process quality: 82
    process :optimize
  end

  version :high_q do
    process resize_to_fit: [1024, 600]
    process quality: 100
    process :optimize
  end

  version :thumb do
    process resize_to_fill: [150, 150]
    process quality: 100
    process :optimize
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end


  def default_url
    "#{model.class.to_s.underscore.downcase}/#{mounted_as}/missing/" + [version_name, 'missing.png'].compact.join('_')
  end

  def extension_white_list
    %w(jpg jpeg gif png bmp tif tiff)
  end

end
