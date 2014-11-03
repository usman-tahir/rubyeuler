# http://rosettacode.org/wiki/HTTP
require 'net/http'

def get_site(site)
  Net::HTTP.get URI(site)
end

puts get_site("http://rosettacode.org/wiki/HTTP")  