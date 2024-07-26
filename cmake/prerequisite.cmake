message(STATUS "┌ Check prerequisites")
list(APPEND CMAKE_MESSAGE_INDENT "|  ")

# ## --- Check library variables
message(STATUS "→ Check library variables")

# ## --- Check library dependencies
message(STATUS "→ Check library dependencies")

list(POP_BACK CMAKE_MESSAGE_INDENT)
message(STATUS "└ DONE")