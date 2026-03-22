#include "MainWindow.hpp"
#include "Actions.hpp"

#include "page/Aucun.hpp"
#include "page/ListWidget.hpp"
#include "page/SearchBar.hpp"
#include "page/SearchBarEdit.hpp"

#include <QMenuBar>
#include <QStackedWidget>
#include <QVBoxLayout>

namespace app
{
    MainWindow::MainWindow(QWidget *_parent)
        : QMainWindow(_parent)
    {
        QMenu *testMenu = menuBar()->addMenu("Test");
        QAction *listWidgetAction = new QAction(this);
        QAction *searchBarAction = new QAction(this);
        QAction *searchBarEditAction = new QAction(this);
        m_stackedWidget = new QStackedWidget(this);
        page::Aucun *aucunPage = new page::Aucun(this);
        page::ListWidget *listWidgetPage = new page::ListWidget(this);
        page::SearchBar *searchBarPage = new page::SearchBar(this);
        page::SearchBarEdit *searchBarEditPage = new page::SearchBarEdit(this);

        listWidgetAction->setText("ListWidget");
        searchBarAction->setText("SearchBar");
        searchBarEditAction->setText("SearchBarEdit");

        testMenu->addAction(listWidgetAction);
        testMenu->addAction(searchBarAction);
        testMenu->addAction(searchBarEditAction);

        addPage(PAGE_AUCUN, aucunPage);
        addPage(PAGE_LIST_WIDGET, listWidgetPage);
        addPage(PAGE_SEARCH_BAR, searchBarPage);
        addPage(PAGE_SEARCH_BAR_EDIT, searchBarEditPage);

        openPage(m_currentPage);

        setCentralWidget(m_stackedWidget);
        setWindowTitle(PARM_WINDOW_TITLE);
        setWindowIcon(QIcon(":/img/logo.png"));
        resize(PARM_WINDOW_WIDTH, PARM_WINDOW_HEIGHT);

        connect(listWidgetAction, &QAction::triggered, this, &MainWindow::onListWidget);
        connect(searchBarAction, &QAction::triggered, this, &MainWindow::onSearchBar);
        connect(searchBarEditAction, &QAction::triggered, this, &MainWindow::onSearchBarEdit);
    }

    MainWindow::~MainWindow()
    {
    }

    void MainWindow::openPage(const QString &_page)
    {
        m_currentPage = _page;
        m_stackedWidget->setCurrentWidget(m_pageMap[m_currentPage]);
    }

    const QString &MainWindow::getCurrentPage() const
    {
        return m_currentPage;
    }

    void MainWindow::addPage(const QString &_page, QWidget *_widget)
    {
        m_pageMap[_page] = _widget;
        m_stackedWidget->addWidget(_widget);
    }

    void MainWindow::onListWidget()
    {
        oActions.addAction(Actions::MOD_MAINWINDOW, Actions::MET_OPEN_LIST_WIDGET, this);
    }

    void MainWindow::onSearchBar()
    {
        oActions.addAction(Actions::MOD_MAINWINDOW, Actions::MET_OPEN_SEARCH_BAR, this);
    }

    void MainWindow::onSearchBarEdit()
    {
        oActions.addAction(Actions::MOD_MAINWINDOW, Actions::MET_OPEN_SEARCH_BAR_EDIT, this);
    }
}
