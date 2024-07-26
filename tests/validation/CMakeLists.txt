message(STATUS "┌ Library validation test")
list(APPEND CMAKE_MESSAGE_INDENT "|  ")

# ## ---  Set test configurations
include(${CMAKE_SOURCE_DIR}/tests/common/config.cmake)

# ## --- Declare targets
include(cmake/targets.cmake)

list(POP_BACK CMAKE_MESSAGE_INDENT)
message(STATUS "└ DONE")