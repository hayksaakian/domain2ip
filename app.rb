require 'rubygems'
require 'sinatra'
require 'sinatra/cross_origin'
require 'socket'
require 'rack/throttle'

use Rack::Throttle::Interval, :min => 1.0

get '/' do 
	send_file File.join(settings.public_folder, 'index.html')
end

get /\/.*/ do
	# 1 hr cache
  cache_control :public, :max_age => 3600
	cross_origin
	domain = env['REQUEST_PATH'][1..-1]
	ip = ""
	re1='.*?'	# Non-greedy match on filler
	re2='((?:[a-z][a-z\\.\\d\\-]+)\\.(?:[a-z][a-z\\-]+))(?![\\w\\.])'	# Fully Qualified Domain Name 1
	re=(re1+re2)
	m=Regexp.new(re,Regexp::IGNORECASE);
	ms = m.match(domain)
	retval = ""
	if ms
    fqdn1=ms[1];
    begin
	  	ip = IPSocket.getaddress(fqdn1)
	  	retval << "#{ip}"
	  rescue SocketError => e
	  	retval << "error: #{e}"
	  end
		retval
	else
		status 404
		body "error: no fully qualified domain name found in request"
	end
end
