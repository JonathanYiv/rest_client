require 'rest-client'

print "Type what you would like to Bing Search:\n> "
search = gets.chomp

response = RestClient.get("http://bing.com/search?q=#{search}", headers={})

print "\nThis is the Response Code: #{response.code}\n"

puts "These are the cookies:"

puts response.cookies

puts "These are the Headers:"

puts response.headers