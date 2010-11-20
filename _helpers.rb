# Set up some view helper methods

puts "Creating useful application_helper.rb ...".magenta

remove_file 'app/helpers/application_helper.rb'
file 'app/helpers/application_helper.rb', <<-RUBY.gsub(/^ {2}/, '')
  module ApplicationHelper

    # Help individual pages to set their HTML titles
    def title(text)
      content_for(:title) { text }
    end

    # Help individual pages to set their HTML meta descriptions
    def description(text)
      content_for(:description) { text }
    end

  end
RUBY