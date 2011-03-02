#!/usr/bin/env ruby
#

require './tor.rb'


t = Tor::TorSocket.new('localhost', 9051);
t.auth "torika"

#puts t.version
#puts t.ns_all

h = Hash.new
h[Tor::Conf::Keys::SocksPort] = "9050"
puts t.getconf

=begin
t.getconfs.each_line do |x|
	type = x.split(' ')[1]
	case type
	when "Boolean" then type = ":Boolean"
	when "String" then type = ":String"
	when "Integer" then type = ":Integer"
	when "DataSize" then type = ":DataSize"
	when "CommaList" then type = ":CommaList"
	when "LineList" then type = ":LineList"
	when "TimeInterval" then type = ":Integer"
	when "TimeMsecInterval" then type = ":TimeMsecInterval"
	when "Dependant" then type = ":Dependant"
	when "Virtual" then type = ":Virtual"
	end
	puts ":#{x.split(' ')[0]} => #{type},"
end
=end

#puts t.config_file
#puts t.default_exit_policy
#puts t.desc_by_name "0trace"
t.close

