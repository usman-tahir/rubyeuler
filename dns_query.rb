# http://rosettacode.org/wiki/DNS_query
require 'socket'

def find_ip(url)
  Socket.getaddrinfo(url, "http", nil, :STREAM)[0][3]
end

p find_ip("www.ruby-lang.org")
p find_ip("www.google.com")
p find_ip("yahoo.com")
p find_ip("twitter.com")  
