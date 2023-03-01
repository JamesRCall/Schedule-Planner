cmake_minimum_required(VERSION 3.16)
add_compile_options(/Zc:__cplusplus)
add_compile_options(/permissive-)
project(Schedule-Planner VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_PREFIX_PATH "C:/Qt/6.4.2/mingw_64")
find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets)
qt_standard_project_setup()

include(CTest)
enable_testing()
add_definitions(${QT_DEFINITIONS})
include_directories(${CMAKE_BINARY_DIR})
qt_add_executable(Scheduler 
    main.cpp)
add_library(Schedule-Library 
    Schedule_Header.h
    Get_Time.cpp
    Advanced_Classes.cpp
    Advanced_Clubs.cpp
    Advanced_Mode.cpp
    Advanced_Other.cpp
    Other_Toggle.cpp
    check.cpp)
target_link_libraries(Scheduler PRIVATE Qt6::Core Qt6::Widgets Qt6::Gui)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
message(STATUS "Qt6Core include directories: ${Qt6Widgets_INCLUDE_DIRS}")
