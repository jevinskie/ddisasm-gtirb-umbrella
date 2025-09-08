add_subdirectory(googletest EXCLUDE_FROM_ALL)

add_library(zstring_view INTERFACE)
target_include_directories(zstring_view INTERFACE zstring_view/include)

add_subdirectory(debug_assert EXCLUDE_FROM_ALL)
add_subdirectory(type_safe EXCLUDE_FROM_ALL)

add_subdirectory(fmt EXCLUDE_FROM_ALL)

add_subdirectory(scnlib EXCLUDE_FROM_ALL)

add_subdirectory(cpptrace EXCLUDE_FROM_ALL)
add_subdirectory(enchantum EXCLUDE_FROM_ALL)
option(LIBASSERT_USE_EXTERNAL_CPPTRACE "" ON)
option(LIBASSERT_USE_EXTERNAL_ENCHANTUM "" ON)
add_subdirectory(libassert EXCLUDE_FROM_ALL)

add_subdirectory(argparse EXCLUDE_FROM_ALL)

add_subdirectory(abseil-cpp EXCLUDE_FROM_ALL)

option(protobuf_INSTALL "" OFF)
option(protobuf_BUILD_TESTS "" OFF)
add_subdirectory(protobuf EXCLUDE_FROM_ALL)

add_subdirectory(boost EXCLUDE_FROM_ALL)

add_subdirectory(capstone EXCLUDE_FROM_ALL)
