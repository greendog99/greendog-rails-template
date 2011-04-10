# Add some demo html pages. These can be deleted at any time.

puts "Creating demo pages ...".magenta

route '# Demonstrations. Remove demo routes, controller, view, and stylesheet for production'
route "match 'demos' => 'demos#show'"
 
copy_static_file "app/controllers/demos_controller.rb"
copy_static_file "app/views/demos/show.html.haml"
copy_static_file "app/stylesheets/partials/_demo.sass"

append_file "app/stylesheets/screen.sass", "// Demonstrations. Remove for production\n"
append_file "app/stylesheets/screen.sass", "@import partials/demo\n"
