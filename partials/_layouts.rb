# Set up default haml layout

puts "Creating default layout ...".magenta

remove_file 'app/views/layouts/_footer.html.haml'
file 'app/views/layouts/_footer.html.haml', <<-HAML.gsub(/^ {2}/, '')
  .copyright
    %p Copyright &copy; #{Date.today.year}
HAML

remove_file 'app/views/layouts/_header.html.haml'
file 'app/views/layouts/_header.html.haml', <<-HAML.gsub(/^ {2}/, '')
  .title
    %h1 Header

  .logo
    %h1 Logo goes here
HAML

remove_file 'app/views/layouts/_nav.html.haml'
file 'app/views/layouts/_nav.html.haml', <<-HAML.gsub(/^ {2}/, '')
  .menu
    %p
      This is your navigation bar. Enjoy.

  .search
    %p
      Search box goes here.
HAML

# This needs to be kept up to date as the boilerplate and sporkd gem get updated
copy_static_file 'app/views/layouts/application.html.haml'

git :add => '.'
git :commit => "-aqm 'Added layouts.'"

puts "\n"