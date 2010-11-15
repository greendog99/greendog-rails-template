# Set up custom 960px CSS grid

puts "Creating CSS grid framework ...".magenta

file 'app/stylesheets/partials/_grid.sass', <<-SASS.gsub(/^ {2}/, '')
  /* From http://bjorkoy.com/2010/05/css-grids-with-sass/

  $width: 960px
  $columns: 12
  $col_margin: 20px

  /* math magic
  $col_width: ($width - $col_margin * ($columns - 1)) / $columns
  $col_total_width: $col_width + $col_margin

  /* create row div
  =row
    float: left
    clear: both
    width: $width

  /* create a column div
  =col($n: 1)
    float: left
    +span($n)

  /* make an element span n columns
  =span($n: 1)
    width: $n * $col_width + ($n - 1) * $col_margin
    @if $n == $columns
      margin-right: 0
    @else
      margin-right: $col_margin

  /* the last column in a row needs this
  =last
    margin-right: 0

  /* prepend n blank columns
  =prepend($n: 1)
    margin-left: $col_total_width * $n

  /* append n blank columns
  =append($n: 1)
    margin-right: $col_total_width * $n + $col_margin
SASS

inject_into_file 'app/stylesheets/style.sass', :after => "@import partials/example\n\n" do
<<-SASS
// Import the custom grid layout
@import partials/grid

SASS
end
