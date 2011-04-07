puts "Adding helpers, shared views, and other miscellany ...".magenta

copy_static_file 'app/controllers/application_controller.rb'
copy_static_file 'app/helpers/application_helper.rb'
copy_static_file 'app/views/shared/_error_messages.html.haml'
copy_static_file 'config/initializers/sass_config.rb'
download_file "https://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"

git :add => '.'
git :commit => "-aqm 'Added helpers, shared views, and other miscellany.'"

puts "\n"