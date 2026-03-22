#pragma once

#include <QFrame>

namespace page
{
    class SearchBarEdit : public QFrame
    {
        Q_OBJECT

    public:
        explicit SearchBarEdit(QWidget *_parent = Q_NULLPTR);
        ~SearchBarEdit();
    };
}
