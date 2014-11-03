# http://rosettacode.org/wiki/Web_scraping

require 'net/http'

def get_site(url)
  Net::HTTP.get URI(url)
end

get_site("http://tycho.usno.navy.mil/cgi-bin/timer.pl").each_line do |line|
  puts line if line.include?("UTC") 
end    