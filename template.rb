require "colored"
require "rails"
require "haml"
require "bundler"

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

apply "#{@partials}/_gemfile.rb"
apply "#{@partials}/_boilerplate.rb"
apply "#{@partials}/_logrotate.rb"
apply "#{@partials}/_appconfig.rb"

puts "Adding miscellaneous useful stuff ... ".magenta
gsub_file 'config/application.rb', /:password/, ':password, :password_confirmation'

apply "#{@partials}/_git.rb"

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"
