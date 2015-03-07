require 'mkmf'

abort 'missing printf()' unless have_func 'printf'

create_makefile 'hallo_welt/hallo_welt'
