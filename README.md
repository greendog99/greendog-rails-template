# Mike's Rails Template

## Overview

This is just a [Rails Template](http://m.onkey.org/2008/12/4/rails-templates) to facilitate the
quick set-up of my Rails applications.  The main features are:

* Add Paul Irish's [HTML5 Boilerplate](http://html5boilerplate.com/) as the default layout, but with HAML and SASS via Peter Gumeson's gem](https://github.com/sporkd/compass-html5-boilerplate)
* Set up a typical Gemfile with some optional gems to uncomment per-project
* Set up the Git repository
* Implement log rotation for server logs
* A few minor tweaks and clean-ups

## Usage

Create a new Rails application as normal, specifying the path to the template script with the **-m** flag:

`rails new {app} -m ../fischer-rails-template/template.rb`

## To Do

* Set up to run from github instead of locally, possibly abandoning file copying
* Break out into sub-templates called via load_template by URL
* Add a default application_helper.rb
* Add rspec
* Add capistrano
* Update config.autoload_paths in application.rb

## Credits

Thanks to others whose work has steered me in the right direction:

* <https://github.com/shawn/shawns-rails3-template/>
* <https://github.com/sporkd/compass-html5-boilerplate>
* <http://html5boilerplate.com/>
