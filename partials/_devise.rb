# Set up devise

puts "Setting up devise ... ".magenta

run "#{@rvm} exec rails generate devise:install"
run "#{@rvm} exec rails generate devise User"
run "#{@rvm} exec rails generate devise:views"

git :add => '.'
git :commit => "-aqm 'Generated user auth layer with devise.'"

puts "\n"