Sass::Plugin.options[:property_syntax] = :new

if Rails.env == "development"
  Sass::Plugin.options[:line_numbers] = true
  Sass::Plugin.options[:style]        = :nested
  Sass::Plugin.options[:always_check] = true
else
  Sass::Plugin.options[:line_numbers] = false
  Sass::Plugin.options[:style]        = :compressed
end

# Handled by compass
# Sass::Plugin.options[:template_location] = { "app/stylesheets" => "public/stylesheets/compiled" }
