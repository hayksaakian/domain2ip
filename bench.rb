#!/usr/bin/env ruby
require 'benchmark'
require 'net/http'

Benchmark.bm do|b|
  b.report("GET localhost:4567/random_domain ") do
    a = ""
    domains = ["http://google.com", "google.com", "amazon.com", "http://amazon.com", "apple.com", "http://apple.com"]
    100.times { 
    	Net::HTTP::get(URI.parse('http://localhost:4567/'<<domains.sample)) 
    }
  end
  b.report("GET domain2ip.net/random_domain ") do
    a = ""
    domains = ["http://google.com", "google.com", "amazon.com", "http://amazon.com", "apple.com", "http://apple.com"]
    100.times { 
    	Net::HTTP::get(URI.parse('http://domain2ip.net/'<<domains.sample)) 
    }
  end
end
