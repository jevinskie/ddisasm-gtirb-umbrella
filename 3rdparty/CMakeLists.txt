add_subdirectory(googletest EXCLUDE_FROM_ALL)

option(BENCHMARK_ENABLE_TESTING "" OFF)
option(BENCHMARK_ENABLE_INSTALL "" OFF)
option(BENCHMARK_INSTALL_DOCS "" OFF)
option(BENCHMARK_INSTALL_TOOLS "" OFF)
add_subdirectory(benchmark EXCLUDE_FROM_ALL)

# add_subdirectory(boost EXCLUDE_FROM_ALL)

add_library(zstring_view INTERFACE)
target_include_directories(zstring_view INTERFACE zstring_view/include)

add_subdirectory(debug_assert EXCLUDE_FROM_ALL)

option(TYPE_SAFE_BUILD_TEST_EXAMPLE "" OFF)
add_subdirectory(type_safe EXCLUDE_FROM_ALL)

add_subdirectory(fmt EXCLUDE_FROM_ALL)

add_subdirectory(fast_float EXCLUDE_FROM_ALL)

option(SCN_USE_EXTERNAL_GTEST "" ON)
option(SCN_USE_EXTERNAL_BENCHMARK "" ON)
option(SCN_USE_EXTERNAL_FAST_FLOAT "" ON)
option(SCN_REGEX_BACKEND "" "re2")
add_subdirectory(scnlib EXCLUDE_FROM_ALL)

option(ZSTD_LEGACY_SUPPORT "" OFF)
option(ZSTD_BUILD_PROGRAMS "" OFF)
option(ZSTD_BUILD_TESTS "" OFF)
# option(ZSTD_BUILD_STATIC "" ON)
# option(ZSTD_BUILD_SHARED "" OFF)
add_subdirectory(zstd/build/cmake EXCLUDE_FROM_ALL)
target_include_directories(libzstd_static
    PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/zstd/lib>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/zstd/lib/common>
)

option(BUILD_DWARFDUMP "" OFF)
add_subdirectory(libdwarf-lite EXCLUDE_FROM_ALL)

option(CPPTRACE_USE_EXTERNAL_ZSTD "" ON)
option(CPPTRACE_USE_EXTERNAL_LIBDWARF "" ON)
add_subdirectory(cpptrace EXCLUDE_FROM_ALL)
add_subdirectory(enchantum EXCLUDE_FROM_ALL)
option(LIBASSERT_USE_EXTERNAL_CPPTRACE "" ON)
option(LIBASSERT_USE_EXTERNAL_ENCHANTUM "" ON)
add_subdirectory(libassert EXCLUDE_FROM_ALL)

add_subdirectory(argparse EXCLUDE_FROM_ALL)

add_subdirectory(abseil-cpp EXCLUDE_FROM_ALL)

option(protobuf_BUILD_PROTOBUF_BINARIES "" ON)
option(protobuf_INSTALL "" OFF)
option(protobuf_BUILD_TESTS "" OFF)
option(protobuf_BUILD_LIBUPB "" OFF)
option(protobuf_LOCAL_DEPENDENCIES_ONLY "" ON)
option(protobuf_MODULE_COMPATIBLE "" OFF)
option(protobuf_DEPRECATED_CMAKE_SUBDIRECTORY_USAGE "" OFF)
add_subdirectory(protobuf EXCLUDE_FROM_ALL)

# add_subdirectory(boost EXCLUDE_FROM_ALL)

option(CAPSTONE_BUILD_MACOS_THIN "" ON)
option(CAPSTONE_BUILD_DIET "" OFF)
option(CAPSTONE_BUILD_CSTOOL "" ON)
option(CAPSTONE_DEBUG "" ON)
option(CAPSTONE_ARCHITECTURE_DEFAULT "" OFF)
option(CAPSTONE_X86_SUPPORT "" ON)
option(CAPSTONE_ARM_SUPPORT "" ON)
option(CAPSTONE_ARM64_SUPPORT "" ON)
option(CAPSTONE_MIPS_SUPPORT "" ON)
option(CAPSTONE_PPC_SUPPORT "" ON)
add_subdirectory(capstone EXCLUDE_FROM_ALL)
