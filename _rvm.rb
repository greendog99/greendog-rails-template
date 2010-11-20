# Set up rvm private gemset

puts "Setting up RVM gemset and installing bundled gems (may take a while) ... ".magenta

current_ruby = `rvm list`.match(/=> ([^ ]+)/)[1]
desired_ruby = ask("Which RVM Ruby would you like to use? [#{current_ruby}]".red)
desired_ruby = current_ruby if desired_ruby.blank?

gemset_name = ask("What name should the custom gemset have? [#{@app_name}]".red)
gemset_name = @app_name if gemset_name.blank?

# Create .rvmrc
rvmrc = "rvm #{desired_ruby}@#{gemset_name} --create"
file '.rvmrc', rvmrc
puts "                  #{rvmrc}".yellow

# Make the .rvmrc trusted
run "rvm rvmrc trust #{@app_path}"

# Since the gemset is likely empty, manually install bundler so it can install the rest
run "rvm #{desired_ruby}@#{gemset_name} gem install bundler"

# Install all other gems needed from Gemfile
# run "rvm #{desired_ruby}@#{gemset_name} exec bundle install"
