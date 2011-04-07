# Set up friendly_id

puts "Setting up friendly_id ... ".magenta

run "#{@rvm} exec rails generate friendly_id"
# run "#{@rvm} exec rake db:migrate"   # DB needs to exist first!

git :add => '.'
git :commit => "-aqm 'Generated friendly_id migration.'"

puts "\n"