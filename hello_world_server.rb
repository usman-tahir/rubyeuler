# http://rosettacode.org/wiki/Hello_world/Web_server
require 'webrick'
include WEBrick

goodbye_proc = lambda do |req, resp|
  resp['Content-Type'] = "text/html"
  resp.body = %{
    <html><body>
      "Goodbye, World!"
    </body></html>  
  }
end  

goodbye = HTTPServlet::ProcHandler.new(goodbye_proc)

s = HTTPServer.new(Port: 8080)
s.mount("/", goodbye)

trap("INT") { s.shutdown }
s.start