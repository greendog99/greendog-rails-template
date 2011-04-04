# Set up rspec

puts "Setting up RSpec ... ".magenta

remove_dir 'test'

run "#{@rvm} exec rails generate rspec:install"

generators = <<-RUBY
  config.generators do |g|
      g.test_framework   :rspec, :fixture => true, :views => false
      g.integration_tool :rspec, :fixture => true, :views => true
    end
RUBY
application generators