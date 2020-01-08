cmake_minimum_required(VERSION 3.10)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)

project(CMakeTestProject CXX)

option(WITH_PYTHON_EXT "Whether to build it as a Python extension as well or not." ON)

find_package(mod REQUIRED)

if(WITH_PYTHON_EXT)
    # Boost.Python
    # -------------------------------------------------------------------------
    set(v 1.64.0)
    foreach(PY 3 34 35 36 37 38 39)
        set(lib "python${PY}")
        find_package(Boost ${v} QUIET COMPONENTS ${lib})
        if(Boost_FOUND)
            find_package(Boost ${v} COMPONENTS ${lib})
            set(PYTHON_TARGET ${lib})
            break()
        endif()
    endforeach()
    if(NOT Boost_FOUND)
        find_package(Boost ${v} REQUIRED COMPONENTS python3)
        message(FATAL_ERROR "Could not find Boost.Python for Python 3. Tried 'python' wih suffixes 3, 34, 35, 36, 37, 38, and 39.")
    endif()

    find_package(Python3 REQUIRED COMPONENTS Interpreter Development)
endif()

# add automatically determined dependencies outside the build dir to the install RPATH
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

# As executable
add_executable(doStuff main.cpp)
target_link_libraries(doStuff mod::libmod)
install(TARGETS doStuff RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX})

# As a Python extension
if(WITH_PYTHON_EXT)
    add_library(pydoStuff MODULE main.cpp)
    set_target_properties(pydoStuff PROPERTIES PREFIX "") # so it doesn't get the "lib" prefix
    target_compile_definitions(pydoStuff PRIVATE AS_PYTHON_EXTENSION)
    target_link_libraries(pydoStuff mod::libmod Boost::${PYTHON_TARGET} Python3::Python)
    install(TARGETS pydoStuff LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX})
endif()