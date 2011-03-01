#!/usr/bin/env ruby
#

require './tor.rb'


t = Tor::TorSocket.new('localhost', 9051);
t.auth "torika"

#puts t.version
#puts t.ns_all

h = Hash.new
h[Tor::Conf::Keys::SocksPort] = 9050
puts t.getconfs

#puts t.config_file
#puts t.default_exit_policy
#puts t.desc_by_name "0trace"
t.close

