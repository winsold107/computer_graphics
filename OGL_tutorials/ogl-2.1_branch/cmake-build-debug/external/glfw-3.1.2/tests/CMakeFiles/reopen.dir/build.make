# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/winsold/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.5981.166/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/winsold/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.5981.166/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug

# Include any dependencies generated for this target.
include external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/depend.make

# Include the progress variables for this target.
include external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/flags.make

external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/reopen.c.o: external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/flags.make
external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/reopen.c.o: ../external/glfw-3.1.2/tests/reopen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/reopen.c.o"
	cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/reopen.dir/reopen.c.o   -c /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/external/glfw-3.1.2/tests/reopen.c

external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/reopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reopen.dir/reopen.c.i"
	cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/external/glfw-3.1.2/tests/reopen.c > CMakeFiles/reopen.dir/reopen.c.i

external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/reopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reopen.dir/reopen.c.s"
	cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/external/glfw-3.1.2/tests/reopen.c -o CMakeFiles/reopen.dir/reopen.c.s

# Object files for target reopen
reopen_OBJECTS = \
"CMakeFiles/reopen.dir/reopen.c.o"

# External object files for target reopen
reopen_EXTERNAL_OBJECTS =

external/glfw-3.1.2/tests/reopen: external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/reopen.c.o
external/glfw-3.1.2/tests/reopen: external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/build.make
external/glfw-3.1.2/tests/reopen: external/glfw-3.1.2/src/libglfw3.a
external/glfw-3.1.2/tests/reopen: external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable reopen"
	cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/external/glfw-3.1.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reopen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/build: external/glfw-3.1.2/tests/reopen

.PHONY : external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/build

external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/clean:
	cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/external/glfw-3.1.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/reopen.dir/cmake_clean.cmake
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/clean

external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/depend:
	cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/external/glfw-3.1.2/tests /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/external/glfw-3.1.2/tests /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/reopen.dir/depend

