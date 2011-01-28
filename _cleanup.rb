puts "\nRemoving unnecessary files ... ".magenta
remove_file "README"

# remove application layout
remove_file "app/views/layouts/application.html.erb"

# remove public files
inside "public" do
	remove_file "index.html"
	remove_file "favicon.ico"
	remove_file "robots.txt"
	remove_file "index.html"
	remove_file "images/rails.png"
end

# remove prototype files
inside "public/javascripts" do
	remove_file "controls.js"
	remove_file "dragdrop.js"
	remove_file "effects.js"
	remove_file "prototype.js"
	remove_file "rails.js"
end