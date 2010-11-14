# Update things in config/application.rb

puts "Adding password_confirmation to filter_parameters ... ".magenta
gsub_file 'config/application.rb', /:password/, ':password, :password_confirmation'

puts "Adding app/extras/ to autoload_paths ... ".magenta
gsub_file 'config/application.rb', /# config.autoload_paths/, 'config.autoload_paths'
