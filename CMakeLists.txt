cmake_minimum_required(VERSION 3.18)

project(app VERSION 1.0.0)

if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")

  add_compile_options(-std:c++17)

elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU") # GCC

  add_compile_options(-std=c++17)

elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")

  add_compile_options(-std=c++17)

elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")

  add_compile_options(/std:c++17)

endif()

## Example subdirectory addition.
## These are subprojects/libraries with CMakeLists.txt files in their dirs.
## 
# add_subdirectory("libs/glfw")

file(GLOB app_src "src/*.cpp")

add_executable(app ${app_src})

## Example including directories.
## e.g., if you had (libs/include/nlohmann), you would (#include "nlohmann/json.hpp") in the source.
## you could add a bunch of libraries like this in (libs/include).
##
# target_include_directories(app PRIVATE ${PROJECT_SOURCE_DIR}/libs/include)

## Example linking libaries.
##
# target_link_libraries(app glfw gdi32 user32 kernel32 opengl32)