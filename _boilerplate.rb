# Install Paul Irish's HTML5 Boilerplate HTML/CSS via the sporkd gem

puts "Setting up HTML5 Boilerplate with HAML, SASS, and Compass ...".magenta

file 'config/compass.rb', <<-RUBY.gsub(/^ {2}/, '')
  require 'html5-boilerplate'

  project_type = :rails
  project_path = Compass::AppIntegration::Rails.root
  http_path = "/"
  css_dir = "public/stylesheets"
  sass_dir = "app/stylesheets"
  environment = Compass::AppIntegration::Rails.env

  if Compass::AppIntegration::Rails.env == "development"
    output_style = :nested
  else
    output_style = :compressed
  end
RUBY

run "compass init rails -r html5-boilerplate -u html5-boilerplate -x sass -c config/compass.rb --force"
