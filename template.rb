#
# greendog-rails-template
#
# Usage:
#   rails new appname -d mysql -m /path/to/template.rb
#

# Check prerequisites
%w{colored bundler compass html5-boilerplate haml capistrano}.each do |component|
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
require "net/http"
require "net/https"

# Directories for template partials and static files
@template_root = File.expand_path(File.join(File.dirname(__FILE__)))
@partials     = File.join(@template_root, 'partials')
@static_files = File.join(@template_root, 'files')

# Copy a static file from the template into the new application
def copy_static_file(path)
  # puts "Installing #{path}...".magenta
  remove_file path
  file path, File.read(File.join(@static_files, path))
  # puts "\n"
end

# From "Suspenders" by thoughtbot
def download_file(uri_string, destination)
  uri = URI.parse(uri_string)
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true if uri_string =~ /^https/
  request = Net::HTTP::Get.new(uri.path)
  contents = http.request(request).body
  path = File.join(destination_root, destination)
  File.open(path, "w") { |file| file.write(contents) }
end

puts "\n========================================================="
puts " GREENDOG RAILS 3 TEMPLATE".yellow.bold
puts "=========================================================\n"

copy_static_file 'Gemfile'
apply "#{@partials}/_git.rb"
apply "#{@partials}/_cleanup.rb"
apply "#{@partials}/_rvm.rb"          # Must be after gemfile since it runs bundler
apply "#{@partials}/_boilerplate.rb"
apply "#{@partials}/_compass.rb"
apply "#{@partials}/_stylesheets.rb"
apply "#{@partials}/_helpers.rb"
apply "#{@partials}/_appconfig.rb"
apply "#{@partials}/_rspec.rb"
apply "#{@partials}/_capistrano.rb"
apply "#{@partials}/_application.rb"
apply "#{@partials}/_friendly_id.rb"   # Must be after application.rb since it runs migrations
# apply "#{@partials}/_devise.rb"
# apply "#{@partials}/_forgery.rb"
# apply "#{@partials}/_demo.rb"

run "#{@rvm} exec rails generate scaffold post title:string body:text"

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"
