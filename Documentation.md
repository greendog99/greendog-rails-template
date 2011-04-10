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
 * To change a font size, use 77%, 85%, 93%, 100%, 108%, 116%, 123.1%, 138.5%, 153.9%, or 182%
* Basic print stylesheet.

Helper classes:

* `.hidden` will set an element to display:none and visibility:hidden.
* `.clearfix` can be applied to the immediate parent container of floated elements to ensure the container expands to encompass the floats.

## CSS (from Compass)

For full details of Compass CSS features, see <http://compass-style.org/docs/reference/compass/>

Compass mixins can be used in SASS by prefixing with a plus-sign or with @include:

    div
      +border-radius(25px)
      @include border-radius(25px)

Some useful features to check out:
* @include border-radius(pixels)
* @include box-shadow(color, h-offset, v-offset, blur, spread, inset)
* @include linear-gradient(color-stops, start, image)
* @include opacity(value)
* @include float(left or right)
* @inlcude min-height(value)
* @include min-width(value)
* @include sprite-img(img, col, row, width, height, margin)

Text:
* @include font-face(name, files, eot)
* @include text-shadow(color, h-offset, v-offset, blur)
* @include nowrap
* @include replace-text(img, x, y)
* @include hide-text

Links:
* @include link-colors(normal, hover, active, visited, focus)
* @include unstyled-link

Lists:
* @include no-bullet
* @include no-bullets
* @include horizontal-list
* @include inline-list

## Grid system (from 1kbgrid.com)

## Color palette (from Solarized)
