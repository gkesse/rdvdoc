#include "MainWindow.hpp"
#include <QApplication>

int main(int _argc, char **_argv)
{
    QApplication app(_argc, _argv);
    MainWindow mainWindow;
    mainWindow.show();
    return app.exec();
}
