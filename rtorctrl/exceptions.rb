#!/usr/bin/env ruby
# This ruby file offers some excpetions for TorSocket api.
# Author::    Alexander Aring  (mailto:alex.aring@gmail.com)
# License::   GPLv3
# TODO - Better objectoriented exception handling. split SyntaxError, AuthError, ArgumentError, CommandError and so...

module Tor
	
	# This module provides all Excpetions
	module Exceptions

		class ResExhaustedException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class SyntaxErrorException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class UnrecognizedCmdException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class UnimplementedCmdException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class SyntaxCmdArgErrorException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class UnrecognizedCmdArgException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class NoAuthException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class BadAuthException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class UnspecifiedErrorException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class InternalErrorException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class InvalidConfValueException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class InvalidDescriptorException < StandardError
			def initialize(msg)
				super msg
			end
		end

		class UnmanagedEntityException < StandardError
			def initialize(msg)
				super msg
			end
		end

	end
end

