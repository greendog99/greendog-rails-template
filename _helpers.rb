# Set up some view helpers and partials

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

# Use inside forms like this:
#
# = form_for @user do |f|
#   = render '/shared/error_messages', :target => @user
file 'app/views/shared/_error_messages.html.haml', <<-HAML.gsub(/^ {2}/, '')
  - if target.errors.any?
    #errorExplanation
      %h2
        = pluralize(target.errors.count, "error")
        prohibited this record from being saved:
      %ul
        - target.errors.full_messages.each do |msg|
          %li= msg
HAML
