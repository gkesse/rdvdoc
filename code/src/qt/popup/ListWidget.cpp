#include "ListWidget.hpp"
#include <QCursor>
#include <QListWidget>
#include <QMouseEvent>
#include <QResizeEvent>
#include <QVBoxLayout>

namespace popup
{
    ListWidget::ListWidget(QWidget *_parent)
        : QFrame(Q_NULLPTR),
          m_parent(_parent)
    {
        QVBoxLayout *mainLayout = new QVBoxLayout(this);
        m_listWidget = new QListWidget(this);

        m_parent->installEventFilter(this);
        mainLayout->setContentsMargins(0, 0, 0, 0);
        mainLayout->addWidget(m_listWidget);

        setObjectName("ListWidgetPopup");
        setAttribute(Qt::WA_ShowWithoutActivating);
        setWindowFlags(Qt::Popup | Qt::FramelessWindowHint);
        setMinimumHeight(PARAM_POPUP_MIN_HEIGHT);

        connect(m_listWidget, &QListWidget::itemClicked, this, &ListWidget::onItemClicked);
    }

    ListWidget::~ListWidget()
    {
    }

    QListWidget *ListWidget::list() const
    {
        return m_listWidget;
    }

    bool ListWidget::eventFilter(QObject *object, QEvent *event)
    {
        if (object == m_parent && event->type() == QEvent::Resize)
        {
            QResizeEvent *resizeEvent = static_cast<QResizeEvent *>(event);
            m_size = resizeEvent->size();
            return true;
        }
        else if (object == m_parent && event->type() == QEvent::MouseButtonPress)
        {
            QMouseEvent *mouseEvent = static_cast<QMouseEvent *>(event);
            if (mouseEvent->button() == Qt::LeftButton)
            {
                QPoint pos = m_parent->mapFromGlobal(QCursor::pos());
                pos = QCursor::pos() - pos;
                pos = pos + QPoint(0, m_size.height());
                int x = pos.x() + PARAM_POPUP_MARGIN_WIDTH;
                int y = pos.y();
                int width = m_size.width() - (2 * PARAM_POPUP_MARGIN_WIDTH);
                int height = sizeHint().height();
                setGeometry(x, y, width, height);
                show();
                activateWindow();
                return true;
            }
        }
        return false;
    }

    void ListWidget::onItemClicked(QListWidgetItem *_item)
    {
        m_currentItem = _item;
        hide();
    }
}
