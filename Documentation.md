# Documentation

## HTML (from HTML5 Boilerplate)

Styles can be targeted to specific IE versions by targeting a parent ".ie6", ".ie7", or ".ie6" class:

`div.photo { margin-top: 10px; }`
`.ie6 div.photo { margin-top: 5px; }`

[Modernizr](http://www.modernizr.com/docs/) allows browser features to be targeted based on whether
the current browser supports them or not, by adding positive and negative classes to the top level
HTML element:

`.borderradius div.photo { margin-top: 10px; }`
`.no-borderradius div.photo { margin-top: 5px; }`

It also allows targeting the .no-js class for browsers that have Javascript disabled. Lastly, it
enables all HTML5 elements to be targetable in all versions of MSIE--which normally would not allow
targeting of <section>, <nav>, and other new HTML5 elements.

[BelatedPNG](http://www.dillerdesign.com/experiment/DD_belatedPNG/) adds PNG support for IE6.

## CSS (from HTML5 Boilerplate)

For full details of CSS features, see <http://html5boilerplate.com/docs/#the-style>

* Full CSS reset is performed, including many tweaks to spacing and layout of lists, checkboxes, links, etc.
* Uses [Yahoo's CSS Fonts](http://developer.yahoo.com/yui/3/cssfonts/):
 * Default font is sans-serif 13px with 16px line-height
 * To change a font size, use 77%, 85%, 93%, 100%, 108%, 123.1%, 138.5%, 153.9%, or 182%
* Basic print stylesheet.

Helper classes:

* `.hidden` will set an element to display:none and visibility:hidden.
* `.clearfix` can be applied to the immediate parent container of floated elements to ensure the container expands to encompass the floats.

## CSS (from Compass)

