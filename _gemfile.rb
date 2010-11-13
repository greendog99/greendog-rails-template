# Set up Gemfile

puts "Appending Gemfile and running Bundler ...".magenta

run "rm Gemfile"
file 'Gemfile', <<-RUBY.gsub(/^ {2}/, '')
  source 'http://gemcutter.org'

  gem 'rails', '~> 3.0.0'
  gem 'mysql2'

  # Better console formatting
  gem 'hirb'

  # Deploy with Capistrano
  gem 'capistrano'

  # Validation of associations
  gem 'validates_existence', '~> 0.5'

  # Human readable URLs
  gem 'friendly_id', '~> 3.1'

  # HTML and CSS replacement
  gem 'haml', '~> 3.0'
  gem 'haml-rails'

  # HTML/CSS framework and boilerplate
  gem 'compass'
  gem 'html5-boilerplate'

  # User management
  # gem 'devise', '~> 1.1'
  #
  # To convert Markdown to HTML
  # gem 'maruku'
  #
  # Pagination of long lists
  # gem 'will_paginate', '~> 3.0.pre2'
  #
  # For Devise view generation
  # gem 'hpricot'
  # gem 'ruby_parser'
  #
  # File upload management
  # NOTE: requires this fix to be applied: http://github.com/thoughtbot/paperclip/commit/56d6b2402d553a505f29eaeb022d4a6900fda8fa
  # gem 'paperclip', '~> 2.3'
  #
  # To deal with file uploads via Flash uploader
  # gem 'mime-types'
  #
  # To track changes to pages and other objects
  # gem 'vestal_versions'
  #    -or-
  # gem 'paper_trail'

  group :development, :test do
    gem 'factory_girl_rails', '~> 1.0'
    # gem 'factory_girl_generator', '~> 1.0'
    gem 'rspec-rails', '~> 2.1.0'
    gem 'rcov'
    gem 'random_data'
  end
RUBY

# run "bundle install"
