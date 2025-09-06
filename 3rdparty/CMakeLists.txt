add_subdirectory(abseil-cpp EXCLUDE_FROM_ALL)

option(protobuf_INSTALL "Install protobuf binaries and files" OFF)
option(protobuf_BUILD_TESTS "Build tests" OFF)
add_subdirectory(protobuf EXCLUDE_FROM_ALL)
