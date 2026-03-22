#include "Aucun.hpp"
#include <QLabel>
#include <QVBoxLayout>

namespace page
{
    Aucun::Aucun(QWidget *_parent)
        : QFrame(_parent)
    {
        QVBoxLayout *mainLayout = new QVBoxLayout(this);
        QLabel *label = new QLabel(this);

        label->setText("Aucun");
        label->setAlignment(Qt::AlignCenter);

        mainLayout->addWidget(label);

        setLayout(mainLayout);
    }

    Aucun::~Aucun()
    {
    }
}
