require 'erb'

weekday = Time.now.strftime('%A')
simple_template = File.read("src/layout.html.erb")
puts simple_template

renderer = ERB.new(simple_template)
puts output = renderer.result()

