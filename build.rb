require 'erb'

weekday = Time.now.strftime('%A')
simple_template = "Today is <%= weekday %>."
puts simple_template

renderer = ERB.new(simple_template)
puts output = renderer.result()