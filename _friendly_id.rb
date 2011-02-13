# Set up friendly_id

puts "Setting up friendly_id ... ".magenta

run "#{@rvm} exec rails generate friendly_id"

git :add => '.'
git :commit => "-am 'Generated friendly_id migration.'"