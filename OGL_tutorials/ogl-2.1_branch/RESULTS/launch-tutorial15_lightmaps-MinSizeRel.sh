#!/bin/sh
bindir=$(pwd)
cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/tutorial15_lightmaps/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/MinSizeRel/tutorial15_lightmaps 
	else
		"/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/MinSizeRel/tutorial15_lightmaps"  
	fi
else
	"/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/MinSizeRel/tutorial15_lightmaps"  
fi
