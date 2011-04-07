# Set up default haml layout

puts "Installing customized HTML5-boilerplate files ...".magenta

%w{application.html.erb _header.html.haml _nav.html.haml _footer.html.haml}.each do |component|
  copy_static_file "app/views/layouts/#{component}"
end

%w{apple-touch-icon.png crossdomain.xml favicon.ico robots.txt}.each do |component|
  copy_static_file "public/#{component}"
end

%w{dd_belatedpng.js jquery-1.5.1.js jquery-1.5.1.min.js modernizr-1.7.min.js}.each do |component|
  copy_static_file "public/javascripts/#{component}"
end

%w{html5-boilerplate.css html5-boilerplate-handheld.css}.each do |component|
  copy_static_file "public/stylesheets/#{component}"
end

git :add => '.'
git :commit => "-aqm 'Added HTML5-boilerplate files.'"

puts "\n"