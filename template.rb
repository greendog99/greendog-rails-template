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

# Directories for template partials and static files
@partials     = File.dirname(__FILE__)
@static_files = File.join(File.dirname(__FILE__), 'files')

# Copy a static file from the template into the new application
def copy_static_file(path)
  puts "Installing #{path}...".magenta
  remove_file path
  file path, File.read(File.join(@static_files, path))
end

puts "\n========================================================="
puts " RAILS 3 TEMPLATE".yellow.bold
puts "=========================================================\n"

apply "#{@partials}/_git.rb"
apply "#{@partials}/_cleanup.rb"
copy_static_file 'Gemfile'
apply "#{@partials}/_rvm.rb"           # Must be after gemfile since it runs bundler
apply "#{@partials}/_boilerplate.rb"
apply "#{@partials}/_stylesheets.rb"   # Must be after boilerplate since it modifies SASS files
apply "#{@partials}/_layouts.rb"       # Must be after boilerplate since it modifies HAML files
apply "#{@partials}/_helpers.rb"
apply "#{@partials}/_appconfig.rb"
apply "#{@partials}/_rspec.rb"
apply "#{@partials}/_capistrano.rb"
apply "#{@partials}/_application.rb"
apply "#{@partials}/_friendly_id.rb"   # Must be after application.rb since it runs migrations
# apply "#{@partials}/_devise.rb"
# apply "#{@partials}/_forgery.rb"
apply "#{@partials}/_demo.rb"

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"
