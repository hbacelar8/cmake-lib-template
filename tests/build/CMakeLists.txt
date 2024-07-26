message(STATUS "┌ Library build test")
list(APPEND CMAKE_MESSAGE_INDENT "|  ")

# ## ---  Set test configurations
include(${CMAKE_SOURCE_DIR}/tests/common/config.cmake)

list(POP_BACK CMAKE_MESSAGE_INDENT)
message(STATUS "└ DONE")