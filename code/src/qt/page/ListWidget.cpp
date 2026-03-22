#include "ListWidget.hpp"
#include <QDir>
#include <QFileIconProvider>
#include <QListWidget>
#include <QVBoxLayout>

namespace page
{
    ListWidget::ListWidget(QWidget *_parent)
        : QFrame(_parent)
    {
        QVBoxLayout *mainLayout = new QVBoxLayout(this);
        m_listWidget = new QListWidget(this);
        m_currentDir = QDir(PARAM_CURRENT_DIR).absolutePath();

        for (int i = 0; i < 20; i++)
        {
            QFileIconProvider iconProvider;
            QIcon icon = QIcon(iconProvider.icon(QFileIconProvider::Drive));
            QListWidgetItem *item = new QListWidgetItem(icon, m_currentDir);
            item->setSizeHint(QSize(0, PARAM_LIST_WIDGET_ITEM_HEIGHT));
            m_listWidget->addItem(item);
        }

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

        m_listWidget->setSizeAdjustPolicy(QListWidget::AdjustToContents);
        m_listWidget->setSelectionMode(QListWidget::ExtendedSelection);
        m_listWidget->setAlternatingRowColors(true);

        mainLayout->addWidget(m_listWidget);

        setLayout(mainLayout);
        setStyleSheet(styleSheet);
    }

    ListWidget::~ListWidget()
    {
    }
}
