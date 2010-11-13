# Set up Rails to rotate logs automatically

puts "\nSet up log file rotation ...".magenta

gsub_file 'config/application.rb', /end\nend/ do
<<-RUBY
    # Rotate log files (50 files max at 1MB each)
    config.logger = Logger.new(config.paths.log.first, 50, 1048576)
  end
end
RUBY
end
