# Check prerequisites
%w{rails colored bundler compass html5-boilerplate haml}.each do |component|
  unless Gem.available?(component)
    run "gem install #{component}"
    Gem.refresh
    Gem.activate(component)
  end
end

require "rails"
require "colored"
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
