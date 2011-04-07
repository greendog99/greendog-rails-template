# Install ...

puts "Setting up Compass ...".magenta

copy_static_file 'config/compass.rb'

run "compass init rails --syntax sass -c config/compass.rb --force > /dev/null"

git :add => '.'
git :commit => "-aqm 'Initialized Compass.'"

puts "\n"