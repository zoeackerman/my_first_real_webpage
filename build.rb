require 'erb'

def binding_for_page(contents)
	binding
end

pages = ["src/pages/about.html.erb", "src/pages/contact.html.erb"]
pages.each do |page|
	puts "#{page}"
	
	contents = File.read(page)
	simple_template = File.read("src/layout.html.erb")

	renderer = ERB.new(simple_template)
	puts output = renderer.result(binding_for_page(contents))
end

