#------------------------------------------------
# references qt
#------------------------------------------------
# configurer un programme de base qt
#------------------------------------------------
-> main.cpp
...
#include <iostream>
#include <QApplication>

int main(int _argc, char **_argv)
{
    std::cout << "Demarrage de l'application\n";
    return 0;
}
#------------------------------------------------
# configurer une fenetre de base qt
#------------------------------------------------
-> main.cpp
...
#include <QApplication>
#include "MainWindow.hpp"

int main(int _argc, char **_argv)
{
    QApplication app(_argc, _argv);
    MainWindow mainWindow;
    mainWindow.show();
    return app.exec();
}
...
-> MainWindow.hpp
...
#pragma once

#include <QMainWindow>

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *_parent = Q_NULLPTR);
    ~MainWindow();
};
...
-> MainWindow.cpp
...
#include "MainWindow.hpp"

MainWindow::MainWindow(QWidget *_parent)
    : QMainWindow(_parent)
{
}

MainWindow::~MainWindow()
{
}
#------------------------------------------------
