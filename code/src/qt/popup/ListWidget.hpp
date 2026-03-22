#pragma once

#include <QFrame>

class QListWidget;
class QListWidgetItem;

namespace popup
{
    class ListWidget : public QFrame
    {
        Q_OBJECT

    public:
        explicit ListWidget(QWidget *_paranet = Q_NULLPTR);
        ~ListWidget();
        QListWidget *list() const;

    protected:
        bool eventFilter(QObject *object, QEvent *event) override;

    private Q_SLOTS:
        void onItemClicked(QListWidgetItem *_item);

    private:
        static const int PARAM_POPUP_MARGIN_WIDTH = 3;
        static const int PARAM_POPUP_MIN_HEIGHT = 50;

    private:
        QListWidget *m_listWidget;
        QListWidgetItem *m_currentItem = Q_NULLPTR;
        QSize m_size;
        QWidget *m_parent;
    };
}
