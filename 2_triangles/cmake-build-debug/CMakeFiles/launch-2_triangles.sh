#!/bin/sh
bindir=$(pwd)
cd /Users/winsold/Desktop/phystech/computer_graphics/2_triangles
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/winsold/Desktop/phystech/computer_graphics/2_triangles/cmake-build-debug/2_triangles 
	else
		"/Users/winsold/Desktop/phystech/computer_graphics/2_triangles/cmake-build-debug/2_triangles"  
	fi
else
	"/Users/winsold/Desktop/phystech/computer_graphics/2_triangles/cmake-build-debug/2_triangles"  
fi
