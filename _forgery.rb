# Set up forgery. Just makes the empty dirs

puts "Setting up forgery ... ".magenta

run "#{@rvm} exec rails generate forgery"

git :add => '.'
git :commit => "-am 'Generated forgery override dirs.'"
