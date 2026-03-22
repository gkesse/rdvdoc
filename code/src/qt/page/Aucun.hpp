#pragma once

#include <QFrame>

class QListWidget;

namespace page
{
    class Aucun : public QFrame
    {
        Q_OBJECT

    public:
        explicit Aucun(QWidget *_parent = Q_NULLPTR);
        ~Aucun();
    };
}
