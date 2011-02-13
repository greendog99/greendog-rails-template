# Set up devise

puts "Setting up devise ... ".magenta

run "#{@rvm} exec rails generate devise:install"

run "#{@rvm} exec rails generate devise User"

# # Run this to also copy in all the views
# run "#{@rvm} exec rails generate devise:views"
