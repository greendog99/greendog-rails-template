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

# Gemfile
puts "\nAppending Gemfile and running Bundler ...".magenta
run "cat #{@path}/Gemfile > Gemfile"
#run "bundle install"

puts "\nSetting up HTML5 Boilerplate with HAML, SASS, and Compass ...".magenta
# gem update html5-boilerplate
run "cp #{@path}/compass.rb config/"
run "compass init rails -r html5-boilerplate -u html5-boilerplate -x sass -c config/compass.rb --force"

puts "\nSet up log file rotation ...".magenta
gsub_file 'config/application.rb', /end\nend/ do
<<-RUBY
    # Rotate log files (50 files max at 1MB each)
    config.logger = Logger.new(config.paths.log.first, 50, 1048576)
  end
end
RUBY
end

# JAVASCRIPT
# puts " Adding Javascript files ...".green
# puts "---------------------------------------------------------"
# run "cp #{@path}/javascripts/application.js public/javascripts"
# get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"
# puts "---------------------------------------------------------"

# SASS
# puts " Installing Sass directory, files and environment preferences ...".green
# puts "---------------------------------------------------------"
# run "cp -r #{@path}/sass/* app/stylesheets/"
# run "cp #{@path}/sass_config.rb config/initializers/"
# puts "---------------------------------------------------------"

apply "#{@partials}/_git.rb"

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"
