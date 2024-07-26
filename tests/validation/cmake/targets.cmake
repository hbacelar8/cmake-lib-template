message(STATUS "┌ Add target")
list(APPEND CMAKE_MESSAGE_INDENT "|  ")

add_executable(VALIDATION_Library)

target_sources(
    VALIDATION_Library
    PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/source/main.cpp
)

target_link_libraries(
    VALIDATION_Library
    PRIVATE
    LIBRARY_NAME
)

set_target_properties(
    VALIDATION_Library
    PROPERTIES
    SUFFIX ".out"
    OUTPUT_NAME VALIDATION_Library${TARGET_SUFFIX}
)

list(POP_BACK CMAKE_MESSAGE_INDENT)
message(STATUS "└ DONE")