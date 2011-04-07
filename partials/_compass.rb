# Install ...

puts "Setting up Compass ...".magenta

copy_static_file 'config/compass.rb'

run "compass init rails --syntax sass -c config/compass.rb --force > /dev/null"

# Need to override the default compass screen.sass file after it's created
remove_file 'app/stylesheets/screen.sass'
copy_static_file 'app/stylesheets/screen.sass'

git :add => '.'
git :commit => "-aqm 'Initialized Compass.'"

puts "\n"