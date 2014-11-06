# http://rosettacode.org/wiki/DNS_query
require 'socket'

def find_ip(url)
  Addrinfo.getaddrinfo(url, nil, nil, :DGRAM).map! {|ai| ai.ip_address}
end

p find_ip("www.ruby-lang.org")
p find_ip("www.google.com")
p find_ip("yahoo.com")
p find_ip("twitter.com") 
p find_ip("www.kame.net") 
