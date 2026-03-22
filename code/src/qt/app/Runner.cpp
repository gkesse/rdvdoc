#include "Runner.hpp"
#include "runner/MainWindow.hpp"

Runner::Runner()
{
}

Runner::~Runner()
{
}

Runner &Runner::Instance()
{
    static Runner instance;
    return instance;
}

void Runner::run(const Actions::Data &_action)
{
    if (_action.module == Actions::MOD_MAINWINDOW)
    {
        runMainWindow(_action);
    }
}

void Runner::runMainWindow(const Actions::Data &_action)
{
    runner::MainWindow module;
    module.run(_action);
}
