#!/usr/bin/env ruby
require './tor.rb'
require 'gtk2'

class ErrorDialog

	def initialize msg
		builder = Gtk::Builder.new
		builder.add_from_file("dialogs.glade")
		builder.connect_signals {|handler| method(handler) }
		@errord = builder.get_object("errordialog")
		@errord.secondary_text = msg
		@errord.show
	end

	def closebutton_clicked
		@errord.destroy
	end

end


class MainWindow

	def initialize
		builder = Gtk::Builder.new

		builder.add_from_file("settings3.glade")

		builder.connect_signals {|handler| method(handler) }

		o = builder.get_object("mainwindow")

		@spinbutton = builder.get_object("spinbutton1")
		@spinbutton.value = 9051
		@adresstext = builder.get_object("adresstext")
		@statuslabel = builder.get_object("statuslabel")
		@statuslabel.text = "Status: Disconnected"
		@passwordtext = builder.get_object("passwordtext")
		o.show()

		@ts = Tor::TorSocket.new(@adresstext.text, @spinbutton.value.to_i);
		#t.auth "torika1000"
	end

	def connectbutton_clicked
		begin
			@ts.port = @spinbutton.value.to_i
			@ts.host = @adresstext.text
			@ts.connect
			@ts.auth @passwordtext.text
			@statuslabel.text = "Status: Connected"
		rescue Exception => e
			ErrorDialog.new e.message
		end
	end

	def closebutton_clicked
		Gtk.main_quit()
	end

	def mainwindow_destroy
		Gtk.main_quit()
	end

end
MainWindow.new
Gtk.main
