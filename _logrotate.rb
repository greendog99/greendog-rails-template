# Set up Rails to rotate logs automatically

puts "Setting up log file rotation ...".magenta

inject_into_file 'config/application.rb', :before => "  end" do
  <<-RUBY

    # Rotate log files (50 files max at 1MB each)
    config.logger = Logger.new(config.paths.log.first, 50, 1048576)
  RUBY
end
