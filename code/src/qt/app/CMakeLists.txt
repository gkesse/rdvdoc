project(app)

set(SRC_FILES
    main.cpp
    MainWindow.cpp
    MainWindow.hpp
    Actions.cpp
    Actions.hpp
    Workers.cpp
    Workers.hpp
    Runner.cpp
    Runner.cpp
)

set(RCC_FILES
    resources.qrc
)

add_executable(${PROJECT_NAME}
    ${SRC_FILES}
    ${RCC_FILES}
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    page
    runner
    Qt6::Widgets
)
