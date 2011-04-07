# Update things in config/application.rb

puts "Adding password_confirmation to filter_parameters ... ".magenta
gsub_file 'config/application.rb', /:password\]/, ':password, :password_confirmation]'

puts "Adding app/extras/ to autoload_paths ... ".magenta
gsub_file 'config/application.rb', /# config.autoload_paths/, 'config.autoload_paths'

puts "Setting default timezone ... ".magenta
gsub_file 'config/application.rb', /# config.time_zone = '.+'/, "config.time_zone = 'Eastern Time (US & Canada)'"

puts "Turning off timestamped_migrations ...".magenta
inject_into_file 'config/application.rb', :before => "  end\nend" do
  <<-RUBY

    # Turn off timestamped migrations
    config.active_record.timestamped_migrations = false
  RUBY
end

puts "Setting up log file rotation ...".magenta
inject_into_file 'config/application.rb', :before => "  end\nend" do
  <<-RUBY

    # Rotate log files (10 files max at 20MB each)
    config.logger = Logger.new(config.paths.log.first, 10, 20 * 1000 * 1000)
  RUBY
end

git :add => '.'
git :commit => "-aqm 'autoload app/extras, set default TZ, log file rotation, and filter for password_confirmation'"

puts "\n"