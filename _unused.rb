# JAVASCRIPT
# puts " Adding Javascript files ...".green
# puts "---------------------------------------------------------"
# run "cp #{@path}/javascripts/application.js public/javascripts"
# get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"
# puts "---------------------------------------------------------"

# SASS
# puts " Installing Sass directory, files and environment preferences ...".green
# puts "---------------------------------------------------------"
# run "cp -r #{@path}/sass/* app/stylesheets/"
# run "cp #{@path}/sass_config.rb config/initializers/"
# puts "---------------------------------------------------------"

# SASS_CONFIG.RB
# Sass::Plugin.options[:template_location] = { "app/stylesheets" => "public/stylesheets/compiled" }
# Sass::Plugin.options[:property_syntax]   = :new
# 
# if Rails.env == "development"
#   Sass::Plugin.options[:line_numbers] = true
#   Sass::Plugin.options[:style]        = :nested
#   Sass::Plugin.options[:always_check] = true
# else
#   Sass::Plugin.options[:line_numbers] = false
#   Sass::Plugin.options[:style]        = :compressed
# end
