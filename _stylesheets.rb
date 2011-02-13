# Set up custom stylesheet defaults

puts "Creating default stylesheets ...".magenta

remove_file 'app/stylesheets/partials/_example.sass'

gsub_file 'app/stylesheets/style.sass', %r{//@include html5-boilerplate;}, '@include html5-boilerplate'
gsub_file 'app/stylesheets/style.sass', %r{@import partials/example}, '//@import partials/example'

%w{grid page buttons flashes forms tables}.each do |component|
  copy_static_file "app/stylesheets/partials/_#{component}.sass"
  append_file "app/stylesheets/style.sass", "@import partials/#{component}\n"
end

git :add => '.'
git :commit => "-aqm 'Added stylesheets.'"
