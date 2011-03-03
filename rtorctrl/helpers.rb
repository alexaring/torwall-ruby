#!/usr/bin/env ruby
#

require 'ipaddr'

module Tor

	module DataTypes
		class IP

			attr_accessor :ip
			attr_accessor :port

			def initialize ip, port=nil
				@ip = IPAddr.new ip
			    @port = port.to_i if not port.nil?
				@maskstr = "/"+ip.split("/")[1].to_s if not ip.split("/")[1].nil?
			end

			def to_s
				if not @port.nil?
					"#{@ip.to_s}#{@maskstr.to_s}:#{@port.to_s}"
				else
					"#{@ip.to_s}#{@maskstr.to_s}"
				end
			end

		end

		# This class is a TorVersion Datatype, you can compare it with other TorVersions
		class Version

			include Comparable

			attr_reader :v3
			attr_reader :v2
			attr_reader :v1
			attr_reader :v0

			def initialize(v3, v2, v1, v0)
				@v0 = v0.to_i;
				@v1 = v1.to_i;
				@v2 = v2.to_i;
				@v3 = v3.to_i;
			end

			def <=>(other)
				dv3 = @v3 - other.v3
				dv2 = @v2 - other.v2
				dv1 = @v1 - other.v1
				dv0 = @v0 - other.v0

				if (dv3 == 0 and
					dv2 == 0 and
					dv1 == 0 and
					dv0 == 0)
					return 0
				end;

				#on equal do nothing	
				return -1 if (dv3 < 0)
				return 1 if (dv3 > 0)
				return -1 if (dv2 < 0)
				return 1 if (dv2 > 0)
				return -1 if (dv1 < 0)
				return 1 if (dv1 > 0)
				return -1 if (dv0 < 0)
				return 1 if (dv0 > 0)

			end

			def to_s
				"#{@v3}.#{@v2}.#{@v1}.#{@v0}";
			end

		end
	end
end
