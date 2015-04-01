require 'rss'

rss = RSS::Parser.parse('http://beta.briefideas.org/ideas.atom', false)

rss.items.each do |i| 
  puts i.title.content
  puts i.link.href; puts
  puts i.content.content; puts
  puts "- - - - - - - -"; puts
end
