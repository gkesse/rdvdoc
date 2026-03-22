#pragma once

#include <QFrame>

namespace page
{
    class SearchBar : public QFrame
    {
        Q_OBJECT

    public:
        explicit SearchBar(QWidget *_parent = Q_NULLPTR);
        ~SearchBar();
    };
}
