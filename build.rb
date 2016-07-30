require 'erb'

weekday = Time.now.strftime('%A')
simple_template = File.read("src/layout.html.erb")

renderer = ERB.new(simple_template)
puts output = renderer.result()

