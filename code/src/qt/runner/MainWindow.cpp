#include "MainWindow.hpp"
#include "app/MainWindow.hpp"
#include <QDebug>

namespace runner
{
    MainWindow::MainWindow()
    {
    }

    MainWindow::~MainWindow()
    {
    }

    void MainWindow::run(const Actions::Data &_action)
    {
        if (_action.method == Actions::MET_OPEN_LIST_WIDGET)
        {
            runOpenListWidget(_action);
        }
        else if (_action.method == Actions::MET_OPEN_SEARCH_BAR)
        {
            runOpenSearchBar(_action);
        }
        else if (_action.method == Actions::MET_OPEN_SEARCH_BAR_EDIT)
        {
            runOpenSearchBarEdit(_action);
        }
    }

    void MainWindow::runOpenListWidget(const Actions::Data &_action)
    {
        auto mainWindow = (app::MainWindow *)_action.params;
        if (mainWindow->getCurrentPage() != app::MainWindow::PAGE_LIST_WIDGET)
        {
            QMetaObject::invokeMethod(mainWindow,
                                      "openPage",
                                      Qt::QueuedConnection,
                                      Q_ARG(QString, app::MainWindow::PAGE_LIST_WIDGET));
        }
    }

    void MainWindow::runOpenSearchBar(const Actions::Data &_action)
    {
        auto mainWindow = (app::MainWindow *)_action.params;
        if (mainWindow->getCurrentPage() != app::MainWindow::PAGE_SEARCH_BAR)
        {
            QMetaObject::invokeMethod(mainWindow,
                                      "openPage",
                                      Qt::QueuedConnection,
                                      Q_ARG(QString, app::MainWindow::PAGE_SEARCH_BAR));
        }
    }

    void MainWindow::runOpenSearchBarEdit(const Actions::Data &_action)
    {
        auto mainWindow = (app::MainWindow *)_action.params;
        if (mainWindow->getCurrentPage() != app::MainWindow::PAGE_SEARCH_BAR_EDIT)
        {
            QMetaObject::invokeMethod(mainWindow,
                                      "openPage",
                                      Qt::QueuedConnection,
                                      Q_ARG(QString, app::MainWindow::PAGE_SEARCH_BAR_EDIT));
        }
    }
}
