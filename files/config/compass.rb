require 'html5-boilerplate'

project_type    = :rails
project_path    = Compass::AppIntegration::Rails.root
http_path       = "/"
css_dir         = "public/stylesheets"
sass_dir        = "app/stylesheets"
javascripts_dir = "public/javascripts"
images_dir      = "public/images"
environment     = Compass::AppIntegration::Rails.env
preferred_syntax = :sass

if Compass::AppIntegration::Rails.env == :development
  output_style = :nested
else
  output_style = :compressed
end
