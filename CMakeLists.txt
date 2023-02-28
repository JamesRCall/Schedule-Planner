cmake_minimum_required(VERSION 3.0.0)
project(Schedule-Planner VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(Scheduler Schedule-Planner.cpp)
add_library(Schedule-Library 
    Schedule_Header.h
    Get_Time.cpp
    Advanced_Classes.cpp
    Advanced_Clubs.cpp
    Advanced_Mode.cpp
    Advanced_Other.cpp
    Other_Toggle.cpp
    check.cpp)
    target_link_libraries(Scheduler Schedule-Library)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
