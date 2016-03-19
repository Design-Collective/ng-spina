source 'https://rubygems.org'

source 'https://rubygems.org'

ruby "2.2.2"

gem 'rails', '4.2'

gem 'rails-api'

gem 'pg'

# https://github.com/radar/paranoia
gem 'paranoia', '~> 2.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.4', '>= 2.4.1'

# Image Processing
gem "paperclip", "~> 4.3"

# Assets and logging for heroku
gem 'rails_12factor', group: :staging

# CMS
gem 'spina-template'
gem 'spina'
gem 'spina-reviews', path: '~/Sites/dcollective/spina-reviews'

group :development, :test do
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.0.1'
  gem 'rspec-collection_matchers'
  gem 'spring-commands-rspec'
  gem 'capybara'
  gem 'spring'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'database_cleaner'

  # https://github.com/stympy/faker
  gem 'faker'
  gem 'rails-perftest'
  gem 'ruby-prof'
  gem 'bullet'
end

group :development do
  gem 'meta_request'
  gem 'binding_of_caller'
  gem "better_errors"
  gem 'quiet_assets'
  # deploy
  gem 'capistrano', '~> 3.2.1'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  #gem 'capistrano3-puma', github: 'seuros/capistrano-puma'
  #gem 'capistrano-sidekiq', github: 'seuros/capistrano-sidekiq'
  # https://github.com/ctran/annotate_models
  gem 'annotate', '>=2.6.0'
  gem "capistrano-db-tasks", require: false

end

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
