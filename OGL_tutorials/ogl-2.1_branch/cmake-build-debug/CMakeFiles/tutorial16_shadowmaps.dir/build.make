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
include CMakeFiles/tutorial16_shadowmaps.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tutorial16_shadowmaps.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tutorial16_shadowmaps.dir/flags.make

CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.o: CMakeFiles/tutorial16_shadowmaps.dir/flags.make
CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.o: ../tutorial16_shadowmaps/tutorial16.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.o -c /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/tutorial16_shadowmaps/tutorial16.cpp

CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/tutorial16_shadowmaps/tutorial16.cpp > CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.i

CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/tutorial16_shadowmaps/tutorial16.cpp -o CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.s

CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.o: CMakeFiles/tutorial16_shadowmaps.dir/flags.make
CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.o: ../common/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.o -c /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/shader.cpp

CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/shader.cpp > CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.i

CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/shader.cpp -o CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.s

CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.o: CMakeFiles/tutorial16_shadowmaps.dir/flags.make
CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.o: ../common/controls.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.o -c /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/controls.cpp

CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/controls.cpp > CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.i

CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/controls.cpp -o CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.s

CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.o: CMakeFiles/tutorial16_shadowmaps.dir/flags.make
CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.o: ../common/texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.o -c /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/texture.cpp

CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/texture.cpp > CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.i

CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/texture.cpp -o CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.s

CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.o: CMakeFiles/tutorial16_shadowmaps.dir/flags.make
CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.o: ../common/objloader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.o -c /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/objloader.cpp

CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/objloader.cpp > CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.i

CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/objloader.cpp -o CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.s

CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.o: CMakeFiles/tutorial16_shadowmaps.dir/flags.make
CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.o: ../common/vboindexer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.o -c /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/vboindexer.cpp

CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/vboindexer.cpp > CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.i

CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/common/vboindexer.cpp -o CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.s

# Object files for target tutorial16_shadowmaps
tutorial16_shadowmaps_OBJECTS = \
"CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.o" \
"CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.o" \
"CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.o" \
"CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.o" \
"CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.o" \
"CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.o"

# External object files for target tutorial16_shadowmaps
tutorial16_shadowmaps_EXTERNAL_OBJECTS =

tutorial16_shadowmaps: CMakeFiles/tutorial16_shadowmaps.dir/tutorial16_shadowmaps/tutorial16.cpp.o
tutorial16_shadowmaps: CMakeFiles/tutorial16_shadowmaps.dir/common/shader.cpp.o
tutorial16_shadowmaps: CMakeFiles/tutorial16_shadowmaps.dir/common/controls.cpp.o
tutorial16_shadowmaps: CMakeFiles/tutorial16_shadowmaps.dir/common/texture.cpp.o
tutorial16_shadowmaps: CMakeFiles/tutorial16_shadowmaps.dir/common/objloader.cpp.o
tutorial16_shadowmaps: CMakeFiles/tutorial16_shadowmaps.dir/common/vboindexer.cpp.o
tutorial16_shadowmaps: CMakeFiles/tutorial16_shadowmaps.dir/build.make
tutorial16_shadowmaps: external/glfw-3.1.2/src/libglfw3.a
tutorial16_shadowmaps: external/libGLEW_1130.a
tutorial16_shadowmaps: CMakeFiles/tutorial16_shadowmaps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable tutorial16_shadowmaps"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial16_shadowmaps.dir/link.txt --verbose=$(VERBOSE)
	"/Users/winsold/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.5981.166/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E copy /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/./tutorial16_shadowmaps /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/tutorial16_shadowmaps/

# Rule to build all files generated by this target.
CMakeFiles/tutorial16_shadowmaps.dir/build: tutorial16_shadowmaps

.PHONY : CMakeFiles/tutorial16_shadowmaps.dir/build

CMakeFiles/tutorial16_shadowmaps.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tutorial16_shadowmaps.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tutorial16_shadowmaps.dir/clean

CMakeFiles/tutorial16_shadowmaps.dir/depend:
	cd /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/cmake-build-debug/CMakeFiles/tutorial16_shadowmaps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tutorial16_shadowmaps.dir/depend

