require 'html5-boilerplate'

project_type = :rails
project_path = Compass::AppIntegration::Rails.root
http_path = "/"
css_dir = "public/stylesheets"
sass_dir = "app/stylesheets"
environment = Compass::AppIntegration::Rails.env

if Compass::AppIntegration::Rails.env == :development
  output_style = :nested
else
  output_style = :compressed
end