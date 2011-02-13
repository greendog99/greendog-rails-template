puts "Adding helpers, shared views, and other miscellany ...".magenta

copy_static_file 'app/helpers/application_helper.rb'
copy_static_file 'app/views/shared/_error_messages.html.haml'
# copy_static_file 'config/initializers/sass_config.rb'

git :add => '.'
git :commit => "-aqm 'Added helpers, shared views, and other miscellany.'"
