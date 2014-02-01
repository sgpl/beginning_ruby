# requires internet access. 
require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://www.rubyinside.com/book/xmlrpctest.cgi")
puts server.call("sample.sumAndDifference", 5, 3).inspect


# makes sense to process errors because remote 
# programs can sometimes lead to errors. 

if ok
	puts results.inspect
else
	puts results.faultCode
	puts results.faultString
end

