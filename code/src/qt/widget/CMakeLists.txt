project(widget)

set(SRC_FILES
    SearchBarEdit.cpp
    SearchBarEdit.hpp
)

add_library(${PROJECT_NAME}
    ${SRC_FILES}
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    popup
    Qt6::Widgets
)
