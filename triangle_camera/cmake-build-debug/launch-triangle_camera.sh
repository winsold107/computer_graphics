#!/bin/sh
bindir=$(pwd)
cd /Users/winsold/Desktop/phystech/computer_graphics/triangle_camera
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/winsold/Desktop/phystech/computer_graphics/triangle_camera/cmake-build-debug/triangle_camera 
	else
		"/Users/winsold/Desktop/phystech/computer_graphics/triangle_camera/cmake-build-debug/triangle_camera"  
	fi
else
	"/Users/winsold/Desktop/phystech/computer_graphics/triangle_camera/cmake-build-debug/triangle_camera"  
fi
