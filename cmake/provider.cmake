
# message(WARNING "cmake/provder.cmake begin")

macro(provide_dependency method dep_name)
    message(WARNING "method: ${method} dep_name: ${dep_name}")
    string(TOLOWER dep_name dep_name_lc)
    if ("${dep_name}" MATCHES "^(debug_assert|cpptrace)$")
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
