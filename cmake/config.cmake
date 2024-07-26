message(STATUS "┌ Configure library")
list(APPEND CMAKE_MESSAGE_INDENT "|  ")

# ## --- Generate library's configuration file
message(STATUS "→ Generate library configuration file")

configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/source/config/library_config.h.in
    ${CMAKE_BINARY_DIR}/config/library_config.h
)

list(POP_BACK CMAKE_MESSAGE_INDENT)
message(STATUS "└ DONE")