#!/bin/sh
bindir=$(pwd)
cd /Users/winsold/Desktop/phystech/computer_graphics/cube_like
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/winsold/Desktop/phystech/computer_graphics/cube_like/cmake-build-debug/cube_like 
	else
		"/Users/winsold/Desktop/phystech/computer_graphics/cube_like/cmake-build-debug/cube_like"  
	fi
else
	"/Users/winsold/Desktop/phystech/computer_graphics/cube_like/cmake-build-debug/cube_like"  
fi
