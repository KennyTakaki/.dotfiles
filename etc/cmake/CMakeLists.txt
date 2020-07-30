# Works with 3.5 and tested through 
cmake_minimum_required(VERSION 3.5)

# This variable CMAKE_EXPORT_COMPILE_COMMANDS is
# needed to be set to 1. It is configured for outputting
# compile_commands.json for clangd
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

#message(STATUS "${CMAKE_EXPORT_COMPILE_COMMANDS}")

add_subdirectory(apps)
add_subdirectory(cmake)
add_subdirectory(docs)
add_subdirectory(src)
