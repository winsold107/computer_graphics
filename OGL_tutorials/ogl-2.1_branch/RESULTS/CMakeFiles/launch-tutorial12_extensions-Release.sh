#!/bin/sh
bindir=$(pwd)
cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/tutorial12_extensions/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/Release/tutorial12_extensions 
	else
		"/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/Release/tutorial12_extensions"  
	fi
else
	"/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/Release/tutorial12_extensions"  
fi