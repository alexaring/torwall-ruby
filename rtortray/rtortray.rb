#!/usr/bin/env ruby1.8
# Examble programm...
#

require 'gtk2'

tray = Gtk::StatusIcon.new
icon = Gdk::Pixbuf.new("./pixmaps/torwallActive.png",32,32)
tray.pixbuf=icon
tray.tooltip=("Torwall Tray")
tray.visible=(true)

Gtk.main
