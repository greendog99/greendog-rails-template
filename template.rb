require "colored"
require "rails"
require "haml"
require "bundler"

@partials = "#{File.dirname(__FILE__)}"

puts "\n========================================================="
puts " FISCHER'S RAILS 3 TEMPLATE".yellow.bold
puts "=========================================================\n"

puts "\nRemoving unnecessary files ... ".magenta
remove_file "README"
remove_file "public/index.html"
remove_file "public/favicon.ico"
remove_file "public/robots.txt"
remove_file "public/index.html"
remove_file "public/images/rails.png"
remove_file "app/views/layouts/application.html.erb"
# remove prototype files
remove_file "public/javascripts/controls.js"
remove_file "public/javascripts/dragdrop.js"
remove_file "public/javascripts/effects.js"
remove_file "public/javascripts/prototype.js"
remove_file "public/javascripts/jrails.js"

apply "#{@partials}/_gemfile.rb"
apply "#{@partials}/_boilerplate.rb"
apply "#{@partials}/_logrotate.rb"
apply "#{@partials}/_appconfig.rb"
apply "#{@partials}/_rspec.rb"

puts "Adding miscellaneous useful stuff ... ".magenta
gsub_file 'config/application.rb', /:password/, ':password, :password_confirmation'

apply "#{@partials}/_git.rb"

# capify!

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"
