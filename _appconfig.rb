# Set up an APP_CONFIG[] hash from app_config.yml to allow easy configuration
# of custom settings for each app.

puts "Creating custom app configuration hash ...".magenta

inject_into_file 'config/application.rb', :before => "require 'rails/all'" do
  <<-RUBY.gsub(/^ {4}/, '')
    # Load application-specific configuration from config/app_config.yml.
    # Access the config params via APP_CONFIG['param']
    APP_CONFIG = YAML.load(File.read(File.expand_path('../app_config.yml', __FILE__)))

  RUBY
end

file 'config/app_config.yml', <<-RUBY.gsub(/^ {2}/, '')
  # Application-specific global configuration settings.
  # These get loaded by config/initializers/app_config.rb and
  # can be accessed via APP_CONFIG[:param]

  # Example:
  #
  # superuser: mfischer
  # per_page: 20
  # array_of_arrays:
  #   - [key, val]
  #   - [key2, val2]
RUBY

git :add => '.'
git :commit => "-aqm 'Added app_config components.'"
