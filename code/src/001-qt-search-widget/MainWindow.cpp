#include "MainWindow.hpp"
#include <QFileIconProvider>
#include <QFileInfo>
#include <QListWidget>
#include <QListWidgetItem>
#include <QVBoxLayout>

MainWindow::MainWindow(QWidget *_parent)
    : QMainWindow(_parent)
{
    initWindowIcon(m_dataParams.window.icon);
    initCurrentDir(m_dataParams.app.currentDir);

    initUi();
    setWindowIcon(m_dataParams.window.icon);
    setWindowTitle(m_dataParams.window.title);
    resize(m_dataParams.window.width, m_dataParams.window.height);

    printParams(m_dataParams);
}

MainWindow::~MainWindow()
{
}

void MainWindow::initUi()
{
    m_listWidget = new QListWidget;

    for (int i = 0; i < 20; i++)
    {
        QFileIconProvider iconProvider;
        QIcon icon = QIcon(iconProvider.icon(QFileIconProvider::Drive));
        QListWidgetItem *item = new QListWidgetItem(icon, m_dataParams.app.currentDir);
        item->setSizeHint(QSize(0, m_dataParams.listWidgets.itemHeight));
        m_listWidget->addItem(item);
    }

    m_listWidget->setSizeAdjustPolicy(QListWidget::AdjustToContents);
    m_listWidget->setSelectionMode(QListWidget::ExtendedSelection);
    m_listWidget->setAlternatingRowColors(true);
    // m_listWidget->setStyleSheet("background-color: #2D2D2D; alternate-background-color: #3D3D3D;");

    QVBoxLayout *mainLayout = new QVBoxLayout;
    mainLayout->addWidget(m_listWidget);

    QWidget *m_centralWidget = new QWidget;
    m_centralWidget->setLayout(mainLayout);

    setCentralWidget(m_centralWidget);

    initStyle();
}

void MainWindow::initStyle()
{
    {
        QString styleSheet = R"_EOF_(
QListView
{
    background-color: #2D2D2D;
    alternate-background-color: #3D3D3D;
    show-decoration-selected: 1;
    outline: none;
}
QListView::item
{
    color: #FFFFFF;
    font-size: 14px;
}
QListView::item:hover
{
    background-color: #4D4D5D;
}
QListView::item:selected
{
    background-color: #5D4D4D;
}
        )_EOF_";
        m_listWidget->setStyleSheet(styleSheet);
    }
}

void MainWindow::initWindowIcon(QIcon &_icon) const
{
    QFileIconProvider iconProvider;
    _icon = QIcon(iconProvider.icon(QFileIconProvider::Computer));
}

void MainWindow::initCurrentDir(QString &_currentDir) const
{
    _currentDir = QDir(_currentDir).absolutePath();
}

void MainWindow::printParams(const Params &_params) const
{
    qDebug() << "->" << "_params.app.currentDir :" << _params.app.currentDir;
}
