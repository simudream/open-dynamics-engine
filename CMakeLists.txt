# cmake build file

CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

SET(BUILD_SHARED_LIBS ON)

PROJECT(ODE)

include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/GIMPACT)
include_directories(${CMAKE_SOURCE_DIR}/libccd)
include_directories(${CMAKE_SOURCE_DIR}/ode)
include_directories(${CMAKE_SOURCE_DIR}/OPCODE)
include_directories(${CMAKE_SOURCE_DIR}/ou)


SET(ODE_OUT_PATH ${CMAKE_BINARY_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
SET(EXECUTABLE_OUTPUT_PATH, ${CMAKE_BINARY_DIR}/bin)

link_directories(${LIBRARY_OUTPUT_PATH})


######################################################
# Configure Build settings according to the platform #
IF(UNIX)
ELSE(UNIX)
  IF(WIN32)
    ######### Windows ###########
    MESSAGE("-- Windows system detected")
    ADD_DEFINITIONS(-DWIN32 -D_WINDOWS)
    ADD_DEFINITIONS(-D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS)
  ELSE(WIN32)
    MESSAGE("Unknown platform")
  ENDIF(WIN32)
ENDIF(UNIX)
    ADD_DEFINITIONS(-DdSINGLE -DCCD_SINGLE -DODE_DLL)
include_directories(
    ${CMAKE_SOURCE_DIR}/ou/include
    ${CMAKE_SOURCE_DIR}/OPCODE    
    ${CMAKE_SOURCE_DIR}/OPCODE/Ice
    ${CMAKE_SOURCE_DIR}/GIMPACT/include 
    ${CMAKE_SOURCE_DIR}/GIMPACT/include/GIMPACT
    ${CMAKE_SOURCE_DIR}/libccd/src    
    ${CMAKE_SOURCE_DIR}/ode/src    
    )
FILE(GLOB third_source_files 
	ou/src/ou/*.cpp
    GIMPACT/src/*.cpp
    libccd/src/*.c
	)
FILE(GLOB opcode_source_files 
	opcode/*.cpp
    opcode/Ice/*.cpp
	)
FILE(GLOB ode_source_files
    ode/src/*.cpp
    ode/src/*.c
    ode/src/joints/*.cpp
)
ADD_LIBRARY(ODE SHARED 
	${third_source_files} 
    ${opcode_source_files} 
    ${ode_source_files}   
	)    