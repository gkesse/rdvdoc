#include "MainWindow.hpp"
#include "Workers.hpp"
#include <QApplication>

int main(int _argc, char **_argv)
{
    oWorkers.start();
    QApplication app(_argc, _argv);
    app::MainWindow mainWindow;
    mainWindow.show();
    return app.exec();
}
