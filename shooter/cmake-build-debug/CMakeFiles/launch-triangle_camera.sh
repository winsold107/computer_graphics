#!/bin/sh
bindir=$(pwd)
cd /Users/winsold/Desktop/phystech/computer_graphics/shooter
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript   
	else
		""  
	fi
else
	""  
fi
