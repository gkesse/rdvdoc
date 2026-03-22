#pragma once

#include <QLineEdit>

namespace popup
{
    class ListWidget;
}

namespace widget
{
    class SearchBarEdit : public QLineEdit
    {
        Q_OBJECT

    public:
        explicit SearchBarEdit(QWidget *_paranet = Q_NULLPTR);
        ~SearchBarEdit();
        popup::ListWidget *popup() const;

    private:
        popup::ListWidget *m_popup;
    };
}
