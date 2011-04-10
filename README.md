# greendog-rails-template

This is a [Rails Template](http://m.onkey.org/rails-templates) to facilitate the
quick set-up of new Rails applications.

## Overview

* Incorporates Paul Irish's [HTML5 Boilerplate](http://html5boilerplate.com/) v1.0 for template, reset, css, etc.
* Removes everything to do with Prototype, and instead includes [JQuery](http://jquery.com/).
* Templates, stylesheets, and views use [haml](http://haml-lang.com/) and [sass](http://sass-lang.com/) by default.
* [Compass](http://compass-style.org/) for managing CSS mixins and frameworks.
* Adds a simple 12-column grid framework from <http://www.1kbgrid.com/> (converted to sass).
* Uses Ethan Schoonover's [Solarized](http://ethanschoonover.com/solarized) for the default color palette.
* Adds a basic stylesheet with header, nav bar, body, and footer, and styles for flash messages and buttons.
* Adds a partial to render form error messages.
* Adds a Gemfile with commonly used gems, and some some optional gems available to un-comment when needed.
* Creates a custom RVM gemset for the application, and installs all Gems via bundler.
* Uses RSpec and factory_girl instead of test-unit.
* Implements automatic log rotation for server logs, based on log size.
* Adds a config/app_config.yml file and corresponding initializer, to facilitate app-specific config settings.
* Disables timestamped_migrations to make the filenames more usable in TextMate.
* Sets up a Git repository complete with gitignore list, and commits the entire project.
* Adds a demonstration page to help get started (/demos)

## Prerequisites

* [Rails](http://rubyonrails.org/) 3.0 or newer
* [RVM](http://rvm.beginrescueend.com/) with at least one Ruby installed

## Usage

Get a copy of the template:

`git clone git://github.com/greendog99/greendog-rails-template.git /tmp/greendog-rails-template`

Create a new Rails application as normal, specifying the path to the template script with the **-m** flag:

`rails new appname -d mysql -m /tmp/greendog-rails-template/template.rb`

Create your database, run your migration, and start the rails server with `rails s`.Browse
to `http://localhost:3000/demos/text` and `http://localhost:3000/demos/grid` to see sample pages.

## Documentation

See the [documentation](documentation.html) page for a summary of how to use each of the features.

## To Do

* Add capistrano deploy.rb file.
* Optionally (based on user interrogation) set up features like devise, paperclip, etc.

## See Also

* <http://rdoc.info/github/wycats/thor/master/Thor/Actions> - Actions used in app template generators (e.g. InjectIntoFile)

## Credits

Thanks to others whose work has steered me in the right direction:

* <https://github.com/shawn/shawns-rails3-template/>
* <https://github.com/sporkd/compass-html5-boilerplate>
* <http://html5boilerplate.com/>
