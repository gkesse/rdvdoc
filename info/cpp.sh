#------------------------------------------------
# references c++
#------------------------------------------------
# configurer un programme de base c++
#------------------------------------------------
#include <iostream>

int main(int _argc, char **_argv)
{
    std::cout << "Demarrage de l'application\n";
    return 0;
}
#------------------------------------------------
# configurer une classe de base c++
#------------------------------------------------
#pragma once

class MainWindow
{
public:
    explicit MainWindow();
    ~MainWindow();
};
...
#include "MainWindow.hpp"

MainWindow::MainWindow()
{
}

MainWindow::~MainWindow()
{
}
#------------------------------------------------
