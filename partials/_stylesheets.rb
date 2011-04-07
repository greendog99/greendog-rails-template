# Set up custom stylesheet defaults

puts "Creating default stylesheets ...".magenta


# %w{grid page buttons flashes forms tables}.each do |component|
#   copy_static_file "app/stylesheets/partials/_#{component}.sass"
# end
# 
# copy_static_file "app/stylesheets/style.sass"

git :add => '.'
git :commit => "-aqm 'Added stylesheets.'"

puts "\n"