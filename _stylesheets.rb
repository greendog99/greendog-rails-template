# Set up custom stylesheet defaults

puts "Creating default stylesheets ...".magenta

remove_file 'app/stylesheets/partials/_example.sass'
gsub_file 'app/stylesheets/style.sass', %r{//@include html5-boilerplate;}, '@include html5-boilerplate'
gsub_file 'app/stylesheets/style.sass', %r{@import partials/example}, '//@import partials/example'

remove_file 'app/stylesheets/partials/_page.sass'
file 'app/stylesheets/partials/_page.sass', <<-SASS.gsub(/^ {2}/, '')
  @import compass/css3

  //-----------------------------------
  // Basic Styles
  //-----------------------------------

  h1, h2, h3, h4, h5, h6
    font-weight: normal

  h1
    +font-size(24px)

  h2
    +font-size(20px)

  h3
    +font-size(18px)

  h4
    +font-size(15px)

  strong, th
    font-weight: bold

  small
    // Use font-size mixin to convert to percentage for YUI
    // http://developer.yahoo.com/yui/3/cssfonts/#fontsize
    // approx 85% when base-font-size eq 13px
    +font-size(11px)

  // Add the 'required' attribute on inputs if you want to use these
  input:valid, textarea:valid

  input:invalid, textarea:invalid
    +border-radius(1px)
    +box-shadow(red, 0, 0, 5px, 0)

  .no-boxshadow input:invalid,
  .no-boxshadow textarea:invalid
    background-color: #f0dddd

  //-----------------------------------
  // HTML5 Boilerplate + http://www.1kbgrid.com/ Grid Layout
  //-----------------------------------

  body
    background-color: white

  div#container

  header#header
    background-color: #cdd9e2
    border-bottom: 1px solid #4f708b
    color: #444
    padding: 15px 0
    .title
      +col(9)
      h1
        +font-size(32px)
    .logo
      +col(3)

  nav#nav
    background-color: #7599b9
    border-top: 1px solid #87abc8
    border-bottom: 1px solid #e0e8f0
    color: #fff
    padding: 10px 0
    .menu
      +col(9)
    .search
      +col(3)
      text-align: right

  div#main
    background-color: white
    color: #444
    border-top: 1px solid #c0d0e0
    padding: 15px 0
    div.content
      +col(12)
    div.main
      +col(9)
    div.aside
      +col(3)

  footer#footer
    border-top: 1px solid #c2c9cf
    border-bottom: 1px solid #c2c9cf
    background-color: #d0d9e0
    color: #333
    padding: 20px 0
    .copyright
      +col(2)
      +prepend(10)
      p
        +font-size(10px)
  
  //-----------------------------------
  // Custom Application Styles
  //-----------------------------------

SASS