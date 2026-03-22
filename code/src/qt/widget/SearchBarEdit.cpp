#include "SearchBarEdit.hpp"
#include "popup/ListWidget.hpp"

namespace widget
{
    SearchBarEdit::SearchBarEdit(QWidget *_parent)
        : QLineEdit(_parent)
    {
        m_popup = new popup::ListWidget(this);

        QString styleSheet = R"_EOF_(
QListWidget
{
    color: #FFFFFF;
    font-size: 14px;
}
QListWidget::item
{
    height: 30px;
    padding-left: 5px;
    padding-right: 5px;
}
        )_EOF_";

        m_popup->setStyleSheet(styleSheet);
    }

    SearchBarEdit::~SearchBarEdit()
    {
    }

    popup::ListWidget *SearchBarEdit::popup() const
    {
        return m_popup;
    }
}
