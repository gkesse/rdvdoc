project(popup)

set(SRC_FILES
    ListWidget.cpp
    ListWidget.hpp
)

add_library(${PROJECT_NAME}
    ${SRC_FILES}
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt6::Widgets
)
