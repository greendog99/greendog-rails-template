# Set up custom stylesheet defaults

puts "Creating default stylesheets ...".magenta

remove_file 'app/stylesheets/partials/_example.sass'

copy_static_file 'app/stylesheets/partials/_buttons.sass'
copy_static_file 'app/stylesheets/partials/_flashes.sass'
copy_static_file 'app/stylesheets/partials/_forms.sass'
copy_static_file 'app/stylesheets/partials/_tables.sass'
copy_static_file 'app/stylesheets/partials/_page.sass'

gsub_file 'app/stylesheets/style.sass', %r{//@include html5-boilerplate;}, '@include html5-boilerplate'
gsub_file 'app/stylesheets/style.sass', %r{@import partials/example}, '//@import partials/example'

append_file 'app/stylesheets/style.sass', "@import partials/buttons\n"
append_file 'app/stylesheets/style.sass', "@import partials/flashes\n"
append_file 'app/stylesheets/style.sass', "@import partials/forms\n"
append_file 'app/stylesheets/style.sass', "@import partials/tables\n"
