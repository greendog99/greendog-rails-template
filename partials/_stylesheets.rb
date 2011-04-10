# Set up custom stylesheet defaults

puts "Creating default stylesheets ...".magenta

# %w{grid page buttons flashes forms tables}.each do |component|
%w{grid solarize main page_header page_nav page_footer flashes}.each do |component|
  copy_static_file "app/stylesheets/partials/_#{component}.sass"
  append_file      "app/stylesheets/screen.sass", "@import partials/#{component}\n"
end

git :add => '.'
git :commit => "-aqm 'Added stylesheets.'"

puts "\n"