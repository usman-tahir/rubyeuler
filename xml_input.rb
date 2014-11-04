# http://rosettacode.org/wiki/XML/Input
require 'rexml/document'
include REXML

def parse(filename,element,attribute)
  doc = Document.new(File.open(filename))
  doc.each_recursive do |node|
    puts node.attributes[attribute] if node.name == element
  end  
end

parse("xml_input_sample.xml","Student","Name")    