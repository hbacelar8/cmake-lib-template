cmake_minimum_required(VERSION 3.22)

message(STATUS "┌────────── LIBRARY_NAME ──────────┐")
list(APPEND CMAKE_MESSAGE_INDENT "|  ")

# ## --- Check if library is used as top project
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
    message(STATUS "→ Library loaded as top project")

    # Specify project info
    message(STATUS "┌ Declare Project")
    list(APPEND CMAKE_MESSAGE_INDENT "|  ")

    project(Library_Project
        LANGUAGES CXX
        DESCRIPTION "Library project"
    )

    list(POP_BACK CMAKE_MESSAGE_INDENT)
    message(STATUS "└ DONE")

    if(VALIDATION)
        # Validation test enabled
        add_subdirectory(tests/validation)
    else()
        # Build test enabled
        add_subdirectory(tests/build)
    endif()
endif()

# ## --- Check prerequisite
include(cmake/prerequisite.cmake)

# ## --- Configure component
include(cmake/config.cmake)

message(STATUS "┌ Add library")
list(APPEND CMAKE_MESSAGE_INDENT "|  ")

# ## --- Add library
add_library(LIBRARY_NAME)

# ## --- List the sources needed to build the library
target_sources(
    LIBRARY_NAME
    PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/source/lib.cpp
)

# ## --- List the include paths needed to build the library
target_include_directories(
    LIBRARY_NAME
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    PRIVATE
    ${CMAKE_BINARY_DIR}/config
)

# ## --- List the libraries needed to build the library
target_link_libraries(
    LIBRARY_NAME
    PRIVATE

    # Link fetched dependencies
    # # dependecy_name

    # Conditional linking
    # # $<$<BOOL:${VARIABLE}>:dependecy_name>
)

list(POP_BACK CMAKE_MESSAGE_INDENT)
message(STATUS "└ DONE")

list(POP_BACK CMAKE_MESSAGE_INDENT)
message(STATUS "└────────── LIBRARY NAME ──────────┘")