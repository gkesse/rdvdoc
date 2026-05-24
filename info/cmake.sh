#------------------------------------------------
# references cmake
#------------------------------------------------
# configurer un programme de base c++
#------------------------------------------------
cmake_minimum_required(VERSION 3.10.0)
project(rdv-qt-schematic VERSION 0.1.0 LANGUAGES C CXX)

set(SRC_FILES
    main.cpp
)

add_executable(${PROJECT_NAME}
    ${SRC_FILES}
)
#------------------------------------------------
# configurer un programme de base qt
#------------------------------------------------
cmake_minimum_required(VERSION 3.10.0)
project(rdv-qt-schematic VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)

find_package(Qt6 REQUIRED COMPONENTS
    Widgets
)

include_directories(${CMAKE_HOME_DIRECTORY})

add_subdirectory(app)
...
project(rdv-app)

set(SRC_FILES
    main.cpp
)

add_executable(${PROJECT_NAME}
    ${SRC_FILES}
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt6::Widgets
)
#------------------------------------------------
