# Then create the makefile for the extension. Rubygems will handle the rest.
require 'mkmf'
$CPPFLAGS = $CPPFLAGS + " -I./include"
$LDFLAGS = $LDFLAGS + " -L./"
$LIBS = $LIBS + " -lz"
create_makefile 'hpdf'
