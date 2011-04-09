# Set up custom stylesheet defaults

puts "Creating default stylesheets ...".magenta

%w{screen handheld print}.each do |component|
  remove_file "app/stylesheets/#{component}"
  copy_static_file "app/stylesheets/#{component}.sass"
end

# %w{grid page buttons flashes forms tables}.each do |component|
%w{grid}.each do |component|
  copy_static_file "app/stylesheets/partials/_#{component}.sass"
  append_file "app/stylesheets/screen.sass", "@import partials/#{component}\n"
end

git :add => '.'
git :commit => "-aqm 'Added stylesheets.'"

puts "\n"