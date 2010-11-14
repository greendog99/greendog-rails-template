# Mike's Rails Template

## Overview

This is just a [Rails Template](http://m.onkey.org/2008/12/4/rails-templates) to facilitate the
quick set-up of my Rails applications.  The main features are:

* Sets up the [compass-html5-boilerplate] gem by Peter Gumeson (sporkd). This provides:
 * All templates, stylesheets, and views use [haml](http://haml-lang.com/) and [sass](http://sass-lang.com/).
 * Paul Irish's [HTML5 Boilerplate](http://html5boilerplate.com/) for layout and reset.
 * [Compass](http://compass-style.org/) for managing CSS mixins and frameworks.
* Adds a Gemfile with my most commonly needed gems, and some some optional gems available to un-comment when needed.
* Removes everything to do with Prototype, since the Boilerplate is based on [JQuery](http://jquery.com/).
* Removes unneeded files like the default Rails index.html and image.
* Implements automatic log rotation for server logs, based on log size.
* Adds a config/app_config.yml file and corresponding initializer, to facilitate app-specific config settings.
* Sets up a Git repository complete with gitignore list, and commits the entire project.

## Usage

Create a new Rails application as normal, specifying the path to the template script with the **-m** flag:

`git clone git://github.com/greendog99/fischer-rails-template.git /tmp/fischer-rails-template`
`rails new *appname* -m /tmp/fischer-rails-template/template.rb`

## To Do

* Add a default application_helper.rb
* Add capistrano
* Update config.autoload_paths in application.rb
* Add base styles for flashes, buttons, etc
* Optionally (based on user interrogation) set up features like friendly_id, devise, paperclip, etc

## Credits

Thanks to others whose work has steered me in the right direction:

* <https://github.com/shawn/shawns-rails3-template/>
* <https://github.com/sporkd/compass-html5-boilerplate>
* <http://html5boilerplate.com/>
