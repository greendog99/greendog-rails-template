# Set up rspec

puts "Setting up RSpec ... ".magenta

remove_dir 'test'

generators = <<-RUBY
  config.generators do |generate|
      generate.test_framework   :rspec, :fixture => true, :views => false
      generate.integration_tool :rspec, :fixture => true, :views => true
    end
RUBY
application generators

run "#{@rvm} exec rails generate rspec:install"

git :add => '.'
git :commit => "-aqm 'Configured RSpec.'"

puts "\n"