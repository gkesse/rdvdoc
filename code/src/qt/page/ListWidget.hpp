#pragma once

#include <QFrame>

class QListWidget;

namespace page
{
    class ListWidget : public QFrame
    {
        Q_OBJECT

    public:
        explicit ListWidget(QWidget *_parent = Q_NULLPTR);
        ~ListWidget();

    private:
        inline static const QString PARAM_CURRENT_DIR = "..";
        inline static const int PARAM_LIST_WIDGET_ITEM_HEIGHT = 30;

    private:
        QListWidget *m_listWidget;
        QString m_currentDir;
    };
}
