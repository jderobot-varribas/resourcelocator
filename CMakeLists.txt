#  Copyright (C) 2016 JdeRobot-ng
#  This file is a template for simplify develop of components for JdeRobot.
#  Template is under dual license, "GPLv3" and "Creative Commons-BY-NC-SA"
#  and was wrote by Victor Arribas <v.arribas.urjc@gmail.com> at January 2016
#  to be compliant with JdeRobot-sandbox and JdeRobot-ng.
#  You can get a fresh copy at:
#    https://github.com/jderobot-varribas/skel_component.git
#
#  Rest code remains to component's author(s).
#  Authors:
#    Victor Arribas <v.arribas.urjc@gmail.com>


cmake_minimum_required(VERSION 2.8.4)

## PROJECT_NAME
# Define here your project name
project(resourcelocator)
# Sometimes output binary must have a custom name. Set it here:
set(binname ${PROJECT_NAME})


### Dependencies (@pre-job)
## use_package() {JdeRobot-sandbox ONLY}
# You can use use_package for:
#   * JdeRobot libraries
#   * standard find_package() libraries


## custom dependencies
include_directories(
)
link_directories(
)
list(APPEND LIBRARIES
)


### Project
## Includes
# public headers MUST follow below standard:
#   include/
#     lib_project_name/
#       <your .h files or whatever additional directory>
# Example:
#   include/skel_component/skel_component.h
# Therefore, you can cleanly and safety include headers with
#   #include <skel_component/skel_component.h>
#
# Private headers can be placed under "source" tree and be referenced as:
#   #include "foo.h"
#   #include "../bar/bar.h"
include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/include
)
include(IDE_show_headers)

## Sources
# sources MUST be placed under "src/" directory
# in a flattened or tree structure
set(SOURCES
	include/resourcelocator/stdutils.hpp
	include/resourcelocator/resourcelocator.hpp
	include/resourcelocator/gladelocator.hpp

	src/resourcelocator.cpp
)

set_property(SOURCE src/resourcelocator.cpp PROPERTY COMPILE_FLAGS "-std=c++0x")

## Binary declaration
#add_executable(${binname} ${SOURCES})
add_library(${binname} SHARED ${SOURCES})

## Link libraries (@post-job)
target_link_libraries(${binname} ${LIBRARIES})


## Adding extras
# Tell compiler to show all possible warnings
set_target_properties(${binname} PROPERTIES COMPILE_FLAGS "-Wall -Wextra")


## Tests
add_executable(test_gladelocator src/test/test_gladelocator.cpp)
target_link_libraries(test_gladelocator ${binname})


### Export package
# declare package to be used externally
set(PROJECT_LIBRARIES
	${binname}
)
declare_package(${PROJECT_NAME} ${PROJECT_LIBRARIES})
