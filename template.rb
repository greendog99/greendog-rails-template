require "colored"
require "rails"
require "haml"
require "bundler"

# Storage for some common files we'll want to insert
@path = "#{File.dirname(__FILE__)}/files"
@partials = "#{File.dirname(__FILE__)}"

puts "\n========================================================="
puts " FISCHER'S RAILS 3 TEMPLATE".yellow.bold
puts "=========================================================\n"

puts "\nRemoving unnecessary files ... ".magenta
run "rm README"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"
run "rm -r public/images"
run "rm -f public/javascripts/*"
run "rm app/views/layouts/application.html.erb"

puts "\nAdding miscellaneous useful stuff ... ".magenta
run "cp #{@path}/app_config.rb config/initializers/"
run "cp #{@path}/app_config.yml config/"
gsub_file 'config/application.rb', /:password/, ':password, :password_confirmation'
# run "cp -r #{@path}/images public/"

apply "#{@partials}/_gemfile.rb"
apply "#{@partials}/_boilerplate.rb"
apply "#{@partials}/_logrotate.rb"
apply "#{@partials}/_git.rb"

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"
