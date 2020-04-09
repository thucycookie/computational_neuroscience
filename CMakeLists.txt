################################################
# created by Sebastian Reiter
# s.b.reiter@googlemail.com
################################################

cmake_minimum_required(VERSION 2.6)

project(P_TETGEN)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})

add_definitions(-DTETLIBRARY -DSELF_CHECK -DNDEBUG)

set_source_files_properties(externals/src/tetgen/predicates.cxx
	PROPERTIES COMPILE_FLAGS -O0)

# Tetgen seems to crash on some geometries if compiled with O3â
set_source_files_properties(externals/src/tetgen/tetgen.cxx
	PROPERTIES COMPILE_FLAGS "-O2 -w")

set(srcTetgen tetgen.cxx predicates.cxx)

add_library(tet STATIC ${srcTetgen})
