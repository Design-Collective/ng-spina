Spina.configure do |config|
  # Set locales
  config.locales = [:en]
  # Run `rake spina:update_translations` after you add any new locale.

  # Important Note
  # ==============

  # You MUST restart your server before changes to this file
  # will take effect.

  # Specify a backend path. Defaults to /admin.
  # config.backend_path = 'admin'

  # Pages Options
  # ===============

  # Note that you might need to remove cached asset after changing this value
  # config.max_page_depth = 5


  # Storage Options
  # ===============

  # Please specify how you want to store photos, your logo, and
  # other files. We use CarrierWave for storage. See
  # https://github.com/denkGroot/Spina/tree/master/app/uploaders/spina

  # config.storage = :file

  # If you want to use s3 to store uploads (recommended)

  config.storage = :s3
  config.aws_region = "us-east-1"
  config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
  config.aws_secret_key = ENV['AWS_SECRET_ACCESS_KEY']
  config.s3_bucket = ENV['FOG_DIRECTORY']
  # If you want to store your files localy (not recommended for
  # production, in large part because it's more difficult to ensure
  # that files are backed up in sync with your database):

end
