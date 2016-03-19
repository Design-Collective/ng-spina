Spina.configure do |config|
  config.NEGATIVE_CAPTCHA_SECRET = '2e641206eb3822d1bb77b16e332c859d2695b307e99f90a9750dad69f9aeda9b028fd586686aac3853c3f33b5a209cf727c50815041fdb11e5c7dc3247b83be7'

  # Important Note
  # ==============

  # You MUST restart your server before changes to this file
  # will take effect.

  # Specify a backend path. Defaults to /admin.
  config.backend_path = ''

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

  # config.storage = :s3
  # config.aws_region = "eu-west-1"
  # config.aws_access_key_id = "abc123"
  # config.aws_secret_key = "abc123"
  # config.s3_bucket = "mybucket"
  # If you want to store your files localy (not recommended for
  # production, in large part because it's more difficult to ensure
  # that files are backed up in sync with your database):

end
