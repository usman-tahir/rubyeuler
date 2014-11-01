# http://rosettacode.org/wiki/XML/Output
# http://www.xml.com/pub/a/2005/11/09/rexml-processing-xml-in-ruby.html?page=3
require 'rexml/document'
include REXML

def create_xml
  character_remarks = { "April" => "Bubbly: I'm > Tam and <= Emily", 
    "Tam O'Shanter" => "Burns: \"When chapman billies leave the street ...\"",
    "Emily" => "Short & shrift" }
  doc1 = Document.new
  doc1.add_element("CharacterRemarks")
  character_remarks.each_with_index do |(char,remark),index|
    doc1.root.add_element("Character")
    doc1.root.elements[index+1].add_attribute("name",char)
    doc1.root.elements[index+1].text = remark
  end
  doc1
end

create_xml.write($stdout, 2)



# desired output:
# <CharacterRemarks>
#   <Character name="Name">remark</Character>
# </CharacterRemarks>  