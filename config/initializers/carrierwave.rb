CarrierWave.configure do |config|
  config.storage = :file

  # Use S3 if you want
  # config.storage = :fog
  # config.fog_credentials = {
  #   provider:               'AWS',
  #   region:                 '',
  #   aws_access_key_id:      '',
  #   aws_secret_access_key:  ''
  # }
  # config.fog_directory  = ''
  # config.fog_public     = true
  # config.fog_attributes = { 'Cache-Control' => 'max-age=315576000' }

  config.enable_processing = !Rails.env.test?
end

module CarrierWave
  module MiniMagick
    def quality(percentage)
      manipulate! do |img|
        img.quality(percentage.to_s)
        img = yield(img) if block_given?
        img
      end
    end
    def optimize
      manipulate! do |img|
        img.combine_options do |c|
          c.strip
          c.depth '8'
          c.filter      "Triangle"
          c.define      "filter:support=2"
          c.unsharp     "0.25x0.25+8+0.065"
          c.dither      "None"
          c.posterize   "136"
          c.define      "jpeg:fancy-upsampling=off"
          c.define      "png:compression-filter=5"
          c.define      "png:compression-level=9"
          c.define      "png:compression-strategy=1"
          c.interlace   "none"
          c.colorspace  "sRGB"
        end
        img
      end
    end
  end
end