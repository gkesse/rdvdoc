project(runner)

set(SRC_FILES
    MainWindow.cpp
    MainWindow.hpp
)

add_library(${PROJECT_NAME}
    ${SRC_FILES}
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt6::Widgets
)
