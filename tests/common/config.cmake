message(STATUS "┌ Set test configurations")
list(APPEND CMAKE_MESSAGE_INDENT "|  ")

option(LIBRARY_CONFIG "Custom library config" ON)

list(POP_BACK CMAKE_MESSAGE_INDENT)
message(STATUS "└ DONE")