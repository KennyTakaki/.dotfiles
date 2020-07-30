# Works with 3.5 and tested through 
cmake_minimum_required(VERSION 3.5)

# C++ standard is set to C++14
set(CMAKE_CXX_STANDARD 14)

# set some compile options
set(CMAKE_CXX_FLAGS -pthread -Wall -D_GLIBCXX_USE_NANOSLEEP -DLINUX)

set(CMAKE_VERBOSE_MAKEFILE on)
# This variable CMAKE_EXPORT_COMPILE_COMMANDS is
# needed to be set to 1. It is configured for outputting
# compile_commands.json for clangd
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)


PROJECT(projname C CXX )
# If you need Boost Lib, get rid of #
#find_package(Boost REQUIRED)
# If you need Thred Lib, get rid of #
#find_package(Threads REQUIRED)

include_directories(
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

include(GNUInstallDirs)

add_subdirectory(apps)
add_subdirectory(cmake)
add_subdirectory(docs)
add_subdirectory(src)

add_executable(${PROJECT_NAME} .cpp)

target_link_libraries(${PROJECT_NAME} .cpp)
