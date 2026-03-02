#pragma once

#include <QMainWindow>
#include <QDir>

class QIcon;
class QListWidget;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    struct Params
    {
        struct App
        {
            QString currentDir = "..";
        };

        struct ListWidgets
        {
            int itemHeight = 30;
        };

        struct Window
        {
            int width = 400;
            int height = 200;
            QString title = "rdvQT - Recherche de données";
            QIcon icon;
        };

        App app;
        Window window;
        ListWidgets listWidgets;
    };

public:
    explicit MainWindow(QWidget *_parent = Q_NULLPTR);
    ~MainWindow();

private:
    void initUi();
    void initStyle();
    void initWindowIcon(QIcon &_icon) const;
    void initCurrentDir(QString &_currentDir) const;
    void printParams(const Params &_params) const;

private:
    Params m_dataParams;
    QListWidget *m_listWidget;
};
