# Install script for directory: /Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/external

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS")

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/external/glfw-3.1.2/cmake_install.cmake")
  include("/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/external/assimp-3.0.1270/contrib/zlib/cmake_install.cmake")
  include("/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/external/assimp-3.0.1270/code/cmake_install.cmake")
  include("/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/external/bullet-2.81-rev2613/src/BulletSoftBody/cmake_install.cmake")
  include("/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/external/bullet-2.81-rev2613/src/BulletCollision/cmake_install.cmake")
  include("/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/external/bullet-2.81-rev2613/src/BulletDynamics/cmake_install.cmake")
  include("/Users/winsold/Desktop/phystech/computer_graphics/OGL_tutorials/ogl-2.1_branch/RESULTS/external/bullet-2.81-rev2613/src/LinearMath/cmake_install.cmake")

endif()

