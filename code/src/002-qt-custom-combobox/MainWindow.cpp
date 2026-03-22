#include "MainWindow.hpp"
#include "SearchComboBox.hpp"
#include <QFormLayout>
#include <QMenu>
#include <QMenuBar>
#include <QWidget>

MainWindow::MainWindow(QWidget *_parent)
    : QMainWindow(_parent)
{
    QMenu *menuFichier = menuBar()->addMenu("Actions");
    QAction *actionAddData = new QAction("Ajouter des données");
    QAction *actionClearData = new QAction("Nottoyer les données");
    QWidget *centralWidget = new QWidget(this);
    QFormLayout *mainLayout = new QFormLayout(centralWidget);
    m_comboBox = new SearchComboBox;

    menuFichier->addAction(actionAddData);
    menuFichier->addAction(actionClearData);

    mainLayout->addRow("Pays:", m_comboBox);
    setCentralWidget(centralWidget);
    setWindowTitle("rdvQT - ComboBox Personnalisé");
    resize(400, 200);

    connect(actionAddData, &QAction::triggered, this, &MainWindow::onAddData);
    connect(actionClearData, &QAction::triggered, this, &MainWindow::onClearData);
}

MainWindow::~MainWindow()
{
}

void MainWindow::onAddData()
{
    QStringList dataItems;
    //
    dataItems << "code-pays-00";
    dataItems << "code-pays-10";
    dataItems << "code-pays-20";
    dataItems << "code-pays-30";
    dataItems << "code-pays-40";
    dataItems << "code-pays-50";
    dataItems << "code-pays-60";
    dataItems << "code-pays-70";
    dataItems << "code-pays-80";
    dataItems << "code-pays-90";
    //
    dataItems << "code-pays-01";
    dataItems << "code-pays-11";
    dataItems << "code-pays-21";
    dataItems << "code-pays-31";
    dataItems << "code-pays-41";
    dataItems << "code-pays-51";
    dataItems << "code-pays-61";
    dataItems << "code-pays-71";
    dataItems << "code-pays-81";
    dataItems << "code-pays-91";
    //
    dataItems << "code-pays-02";
    dataItems << "code-pays-12";
    dataItems << "code-pays-22";
    dataItems << "code-pays-32";
    dataItems << "code-pays-42";
    dataItems << "code-pays-52";
    dataItems << "code-pays-62";
    dataItems << "code-pays-72";
    dataItems << "code-pays-82";
    dataItems << "code-pays-92";
    //
    m_comboBox->setItems(dataItems);
}

void MainWindow::onClearData()
{
    m_comboBox->clearItems();
}
