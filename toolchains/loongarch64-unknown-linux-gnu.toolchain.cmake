set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR loongarch64)

if(DEFINED ENV{LOONGARCH64_ROOT_PATH})
    file(TO_CMAKE_PATH $ENV{LOONGARCH64_ROOT_PATH} LOONGARCH64_ROOT_PATH)
else()
    message(FATAL_ERROR "LOONGARCH64_ROOT_PATH env must be defined")
endif()

set(LOONGARCH64_ROOT_PATH ${LOONGARCH64_ROOT_PATH} CACHE STRING "root path to loongarch64 toolchain")

set(CMAKE_C_COMPILER "${LOONGARCH64_ROOT_PATH}/bin/loongarch64-unknown-linux-gnu-gcc")
set(CMAKE_CXX_COMPILER "${LOONGARCH64_ROOT_PATH}/bin/loongarch64-unknown-linux-gnu-g++")

set(CMAKE_FIND_ROOT_PATH "${LOONGARCH64_ROOT_PATH}/loongarch64-unknown-linux-gnu")

if(NOT CMAKE_FIND_ROOT_PATH_MODE_PROGRAM)
    set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
endif()
if(NOT CMAKE_FIND_ROOT_PATH_MODE_LIBRARY)
    set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
endif()
if(NOT CMAKE_FIND_ROOT_PATH_MODE_INCLUDE)
    set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
endif()
if(NOT CMAKE_FIND_ROOT_PATH_MODE_PACKAGE)
    set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
endif()

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=loongarch64")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=loongarch64")

# cache flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "c flags")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}" CACHE STRING "c++ flags")
