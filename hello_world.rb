#!/usr/bin/env ruby

require 'nokogiri'

#p "Hello world!"

doc = Nokogiri::HTML(File.read("index.html"))

doc.css('h1').each do |h1|
    p h1.text
end
