source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '<= 5.0.0.1'
# Use pg as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

gem 'spina', github: "denkGroot/Spina", branch: "master"
#gem 'spina-template', "~> 0.4"
# Plugins
gem 'spina-articles', path: 'vendor/plugins'
gem 'spina-members', path: 'vendor/plugins'
gem 'spina-portfolio', path: 'vendor/plugins'

# Patches for Rails 5
gem 'globalize', github: 'globalize/globalize'
gem 'breadcrumbs_on_rails', '2.3.1'
gem 'draper', github: 'audionerd/draper', branch: 'rails5'
gem 'dalli'

# Assets
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'

# DB Dump task
gem 'yaml_db', github: 'jetthoughts/yaml_db', ref: 'fb4b6bd7e12de3cffa93e0a298a1e5253d7e92ba'

# https://github.com/radar/paranoia
# gem 'paranoia', '~> 2.0'

gem 'friendly_id', '~> 5.1.0'
gem 'prerender_rails'
gem 'fog'
gem 'attr_bitwise'
gem 'jazz_fingers', github: 'plribeiro3000/jazz_fingers', branch: 'master'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'dotenv-rails', git: "https://github.com/bkeepers/dotenv"
  gem 'rspec-rails', '~> 3.5'
  gem 'rspec-collection_matchers'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'

  # https://github.com/stympy/faker
  gem 'faker'
  gem 'rails-perftest', github: 'rails/rails-perftest', branch: 'master'
  gem 'ruby-prof'
  gem 'bullet'
  gem 'foreman'

end

group :development do
   # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'binding_of_caller'
  gem "better_errors"
  # deploy
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  #gem 'capistrano-rvm'
  gem 'capistrano3-puma', github: 'seuros/capistrano-puma'
  gem 'capistrano-sidekiq', github: 'seuros/capistrano-sidekiq'
  gem 'annotate', '>=2.6.0'
  gem "capistrano-db-tasks", require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

