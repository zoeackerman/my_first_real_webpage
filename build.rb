require 'erb'

def binding_for_page(contents)
	binding
end

pages = ["src/pages/bickfords_home.html.erb", "src/pages/bickfords_contact.html.erb", "src/pages/bickfords_people.html.erb", "src/pages/bickfords_types.html.erb", "src/pages/bickfords_resources.html.erb"]
pages.each do |page|
	puts "#{page}"
	
	contents = File.read(page)
	simple_template = File.read("src/layout.html.erb")

	renderer = ERB.new(simple_template)
	output = renderer.result(binding_for_page(contents))

	output_file_name = page.gsub(".erb", "")
	output_file_name = output_file_name.gsub("src/pages", "build")

	puts output_file_name
	
	File.write(output_file_name, output)

end

