#pragma once

#include "app/Actions.hpp"

namespace runner
{
    class MainWindow
    {
    public:
        explicit MainWindow();
        ~MainWindow();
        void run(const Actions::Data &_action);

    private:
        void runOpenListWidget(const Actions::Data &_action);
        void runOpenSearchBar(const Actions::Data &_action);
        void runOpenSearchBarEdit(const Actions::Data &_action);
    };
}
