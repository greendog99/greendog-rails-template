# Set up custom 960px CSS grid

puts "Creating CSS grid framework ...".magenta

inject_into_file 'app/stylesheets/style.sass', :after => "@import \"partials/example\";\n\n" do
  <<-SASS.gsub(/^ {4}/, '')
    // Import the custom grid layout
    @import partials/grid

  SASS
end

file 'app/stylesheets/partials/_grid.sass', <<-SASS.gsub(/^ {2}/, '')
  /* From http://www.1kbgrid.com/

  $columns: 12
  $col_width: 60px
  $gutter: 20px
  $margin = $gutter / 2
  $width = $columns * ($col_width + $gutter)

  =row
    width: $width
    margin: 0 auto
    overflow: hidden

  =inner_row
    margin: 0 ($margin * -1)
    width: auto
    display: inline-block

  =col($n: 1)
    margin: 0 $margin
    overflow: hidden
    float: left
    display: inline
    width: ($n - 1) * ($col_width + $gutter) + $col_width

  =prepend($n: 1)
    margin-left: $n * ($col_width + $gutter) + $margin

  =append($n: 1)
    margin-right: $n * ($col_width + $gutter) + $margin

  // Add the .row class to a div to start a new row. Can be nested

  .row
    +row

  .row .row
    +inner_row

  // Some sample classes to get started with columns. You should create
  // your own semantic classes (e.g. section.welcome, div.blog, div.post...)

  .non_semantic_12col
    +col(12)

  .non_semantic_8col
    +col(8)

  .non_semantic_4col
    +col(4)

  .non_semantic_4col_tall
    +col(4)
    p
      line-height: 170px

  //
  // Sample HAML to draw a grid
  //
  // .row
  //   .non_semantic_12col
  //     %p 12
  // 
  // .row
  //   .non_semantic_8col
  //     %p 8
  //     .row
  //       .non_semantic_4col
  //         %p 4
  //       .non_semantic_4col
  //         %p 4
  //   .non_semantic_4col_tall
  //     %p 4
  //
  // ---------------------------------------------------
  // |                        12                       |
  // ---------------------------------------------------
  // ---------------------------------- ----------------
  // |                8               | |              |
  // ---------------------------------- |      4       |
  // ----------------- ---------------- |              |
  // |       4       | |       4      | |              |
  // ----------------- ---------------- ----------------
  //
SASS
