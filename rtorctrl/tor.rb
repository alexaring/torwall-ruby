#!/usr/bin/env ruby
# This ruby programm offers a high level api for torcontrol api.
# Author::    Alexander Aring  (mailto:alex.aring@gmail.com)
# License::   GPLv3
#
require 'socket'
require './helpers.rb'
require './symbols.rb'
require './exceptions.rb'

# This Module provides all Tor items
module Tor

	# This class is a TorSocket, it connects to torcontrol and offers high level methods.
	class TorSocket

		# Generates a TorSocket with host and port
		# * param host - hostname of torcontrol
		# * param port - port of torcontrol
		def initialize host, port
			@host = host
			@port = port
			@s = TCPSocket.open(@host, @port)
			@s.set_encoding("US-ASCII", "US-ASCII")
		end

		protected

		# Low Level send method to torcontrol
		# This method you can't access outside of from object
		# * param value - string command
		def low_level_send value
			@s.write(value + "\r\n")
			@s.flush
		end

		# This method get the data String from reply
		# * return - datareply string
		def low_level_recv
			result = ""
			err = check_recv
			case err
			when :OK_END_REPLY then
				result = @s.gets
			when :OK_MID_REPLY then
				result = @s.gets
				@s.gets
			when :OK_DATA_REPLY then
				loop do
					result += @s.gets
					break if (result[-5..-1] == "\r\n.\r\n")
				end
				result = result[0..-5]
				@s.gets
			end
			result
		end

		# High level to send a message and get replystring
		# * param cmd - command for torcontrol
		# * return - replystring
		def send cmd
			low_level_send cmd
			low_level_recv
		end

		# This method receives the first 4 Bytes and check the reply
		# if a error is occur. If a error occur it throws a Excpetion
		# Please see excpetions.rb for more details
		# * return - reply type = :OK_END_REPLY, :OK_MID_REPLY or :OK_DATA_REPLY
		def check_recv
			#Read the first 4 Bytes from reply to calculate next decision
			result = @s.read 4
			case result
			when "250 " then
				#Simply OK reply
				return :OK_END_REPLY
			when "250-" then
				#OK reply from a line reply
				return :OK_MID_REPLY
			when "250+" then
				#OK reply from a data reply
				return :OK_DATA_REPLY
			when "251 " then
				#Operation was unnecessary
				#It's not an error, I throw here no exception. 
				#TODO
				@s.gets 
			when "451 " then
				#Resource exhausted
				raise ResExhaustedException.new @s.gets
			when "500 " then
				#Syntax error: protocol
				raise SyntaxErrorException.new @s.gets
			when "510 " then
				#Unrecognized command
				raise UnrecognizedCmdExcpetion.new @s.gets
			when "511 " then
				#Unimplemented command
				raise UnimplementedCmdExcpetion.new @s.gets
			when "512 " then
				#Syntax error in command argument
				raise SyntaxCmdArgErrorException.new @s.gets
			when "513 " then
				#Unrecognized command argument
				raise UnrecognizedCmdArgExcpetion.new @s.gets
			when "514 " then
				#Authentication required
				raise NoAuthExcpetion.new @s.gets
			when "515 " then
				#Bad authentication
				raise BadAuthExcpetion.new @s.gets
			when "550 " then
				#Unspecified Tor error
				raise UnspecifiedErrorException.new @s.gets
			when "551 " then
				#Internal error
				raise InternalErrorException.new @s.gets
			when "552 " then
				#Unrecognized entity
				raise UnmanagedEntityException.new @s.gets
			when "553 " then
				#Invalid configuration value
				raise InvalidConfValueException.new @s.gets
			when "554 " then
				#Invalid descriptor
				raise InvalidDescriptorException.new @s.gets
			when "555 " then
				#Unmanaged entity
				raise UnmanagedEntityException.new @s.gets
			when "650 " then
				#Asynchronous event notification
				#That's not an error.
				#TODO
				@s.gets
			else
				#Unknown reply
				raise @s.gets
			end
		end

		public

		# This method sends authenticate command to torcontrol with given pw.
		# If pw is nil, nothing will be send.
		# * param pw - password to authenticate
		def auth pw = nil
			if (!pw.nil?)
				self.send "AUTHENTICATE \"#{pw}\""
			end
		end

		# This method close the connection to torcontrol socket.
		def close
			@s.close
		end

		def setconf hash
			hash.each do |x|
				self.send "SETCONF #{x.first.to_s}=\"#{x.last.to_s}\""
			end
		end

		def resetconf array
			array.each do |x|
				self.send "RESETCONF #{x.to_s}"
			end
		end

		def getconf key
			result = self.send "GETCONF #{key.to_s}"
			result =~ /(.+)=(.+)/
				$2
		end

		def getconfs
			self.send "getinfo config/names"
		end

		def version
			result = self.send "GETINFO version"
			result =~ /(\d+)\.(\d+)\.(\d+)\.(\d+)/
				TorVersion.new($1, $2, $3, $4)
		end

		def config_file
			self.send "GETINFO config-file"
		end

		#TODO config_text

		def default_exit_policy
			self.send "GETINFO exit-policy/default"
		end

		def desc_by_id id
			self.send "GETINFO desc/id/#{id}"
		end

		def desc_by_name name
			self.send "GETINFO desc/name/#{name}"
		end

		def ns_all
			self.send "GETINFO ns/all"
		end

	end

end
