# Create a .gitignore file and a new local repository, commit everything

puts "Initializing new Git repo ...".magenta

remove_file '.gitignore'
file '.gitignore', <<-CODE.gsub(/^ {2}/, '')
  .DS_Store
  mkmf.log
  log
  coverage
  rdoc
  .bundle
  tmp
  db/*.sqlite3
  config/database.yml
  public/stylesheets/compiled/*
  public/system/*
CODE

git :init
git :add => "."
git :commit => "-aqm 'Initial commit.'"
