cmake_minimum_required(VERSION 3.10.0)
project(rdv-qt VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)

find_package(Qt6 REQUIRED COMPONENTS
    Widgets
)

include_directories(${PROJECT_SOURCE_DIR})

add_subdirectory(app)
add_subdirectory(page)
add_subdirectory(runner)
add_subdirectory(widget)
add_subdirectory(popup)
