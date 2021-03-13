#!/bin/sh
bindir=$(pwd)
cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/tutorial04_colored_cube/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/RelWithDebInfo/tutorial04_colored_cube 
	else
		"/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/RelWithDebInfo/tutorial04_colored_cube"  
	fi
else
	"/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/RelWithDebInfo/tutorial04_colored_cube"  
fi
