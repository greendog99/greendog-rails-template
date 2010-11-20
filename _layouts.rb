# Set up default haml layout

puts "Creating default layout ...".magenta

remove_file 'app/views/layouts/_footer.html.haml'
file 'app/views/layouts/_footer.html.haml', <<-HAML.gsub(/^ {2}/, '')
  %section.copyright
    %p Copyright &copy; #{Date.today.year}
HAML

remove_file 'app/views/layouts/_header.html.haml'
file 'app/views/layouts/_header.html.haml', <<-HAML.gsub(/^ {2}/, '')
  %section.title
    %h1 Header
HAML

file 'app/views/layouts/_nav.html.haml', <<-HAML.gsub(/^ {2}/, '')
  %p
    This is your navigation bar. Enjoy.
HAML

# This needs to be kept up to date as the boilerplate and sporkd gem get updated
remove_file 'app/views/layouts/application.html.haml'
file 'app/views/layouts/application.html.haml', <<-HAML.gsub(/^ {2}/, '')
  !!! 5
  -# http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither
  -ie_html :lang => 'en', :class => 'no-js' do
    = render :partial => 'layouts/head'
    %body{ :class => "\#{controller.controller_name}" }
      #container
        %header#header
          .row
            = render :partial => 'layouts/header'
        %nav#nav
          .row
            = render :partial => 'layouts/nav'
        #main
          .row
            = render :partial => 'layouts/flashes'
          .row
            = yield
        %footer#footer
          .row
            = render :partial => 'layouts/footer'
      -# Javascript at the bottom for fast page loading
      = render :partial => 'layouts/javascripts'
HAML
