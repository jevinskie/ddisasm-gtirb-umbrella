
# message(WARNING "cmake/provder.cmake begin")

macro(provide_dependency method dep_name)
    string(TOLOWER "${dep_name}" dep_name_lc)
    message(WARNING "method: ${method} dep_name: ${dep_name} dep_name_lc: ${dep_name_lc}")
    if ("${dep_name_lc}" STREQUAL "debug_assert")
        # type_safe will look for debug_assert TARGET if FOUND is OFF
        set(debug_assert_FOUND OFF)
        message(STATUS "forcing debug_assert_FOUND to OFF for type_safe")
    elseif ("${dep_name_lc}" STREQUAL "libdwarf")
        set(libdwarf_FOUND ON)
        message(STATUS "forcing libdwarf_FOUND to ON for cpptrace")
    elseif ("${dep_name_lc}" MATCHES "^(cpptrace)$")
        message(WARNING "MATCHED method: ${method} dep_name: ${dep_name}")
        # FetchContent_MakeAvailable(${dep_name})
        # set(${dep_name}_FOUND TRUE)
    endif()
endmacro()

cmake_language(
    SET_DEPENDENCY_PROVIDER provide_dependency
    SUPPORTED_METHODS FIND_PACKAGE
)

# message(WARNING "cmake/provder.cmake end")
