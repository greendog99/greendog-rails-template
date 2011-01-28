# Check prerequisites
unless Gem.available?("colored")
  run "gem install colored"
  Gem.refresh
  Gem.activate("colored")
end

unless Gem.available?("rails")
  run "gem install rails"
  Gem.refresh
  Gem.activate("rails")
end

unless Gem.available?("bundler")
  run "gem install bundler"
  Gem.refresh
  Gem.activate("bundler")
end

unless Gem.available?("compass")
  run "gem install compass"
  Gem.refresh
  Gem.activate("compass")
end

unless Gem.available?("html5-boilerplate")
  run "gem install html5-boilerplate"
  Gem.refresh
  Gem.activate("html5-boilerplate")
end

unless Gem.available?("haml")
  run "haml"
  Gem.refresh
  Gem.activate("haml")
end

require "colored"
require "rails"
require "bundler"
require "haml"

# Set directory for partials
@partials = "#{File.dirname(__FILE__)}"

puts "\n========================================================="
puts " RAILS 3 TEMPLATE".yellow.bold
puts "=========================================================\n"

apply "#{@partials}/_gemfile.rb"
apply "#{@partials}/_rvm.rb"           # Must be after gemfile since it runs bundler
apply "#{@partials}/_boilerplate.rb"
apply "#{@partials}/_grid.rb"          # Must be after boilerplate since it modifies SASS files
apply "#{@partials}/_stylesheets.rb"   # Must be after boilerplate since it modifies SASS files
apply "#{@partials}/_layouts.rb"       # Must be after boilerplate since it modifies HAML files
apply "#{@partials}/_helpers.rb"
apply "#{@partials}/_appconfig.rb"
apply "#{@partials}/_rspec.rb"
apply "#{@partials}/_capistrano.rb"
apply "#{@partials}/_application.rb"
apply "#{@partials}/_friendly_id.rb"   # Must be after application.rb since it runs migrations
apply "#{@partials}/_git.rb"           # Must be last in order to commit initial repository
apply "#{@partials}/_demo.rb"

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"
