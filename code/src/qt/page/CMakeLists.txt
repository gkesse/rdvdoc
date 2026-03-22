project(page)

set(SRC_FILES
    Aucun.cpp
    Aucun.hpp
    ListWidget.cpp
    ListWidget.hpp
    SearchBar.cpp
    SearchBar.hpp
    SearchBarEdit.cpp
    SearchBarEdit.hpp

)

add_library(${PROJECT_NAME}
    ${SRC_FILES}
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    widget
    Qt6::Widgets
)
