# Install ...

puts "Setting up Compass ...".magenta

copy_static_file 'config/compass.rb'

run "compass init rails --syntax sass -c config/compass.rb --force > /dev/null"

# Use html5boilerplate and modernizr method of styling ie6
remove_file 'app/stylesheets/ie.sass'

# Override the default compass stylesheets
%w{screen print handheld}.each do |component|
  remove_file      "app/stylesheets/#{component}.sass"
  copy_static_file "app/stylesheets/#{component}.sass"
end

git :add => '.'
git :commit => "-aqm 'Initialized Compass.'"

puts "\n"