# Set up capistrano

puts "Setting up Capistrano ... ".magenta

capify!

# Update deploy.rb !!

git :add => '.'
git :commit => "-aqm 'Configured Capistrano.'"

puts "\n"