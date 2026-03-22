#include "SearchBar.hpp"
#include <QLabel>
#include <QVBoxLayout>

namespace page
{
    SearchBar::SearchBar(QWidget *_parent)
        : QFrame(_parent)
    {
        QVBoxLayout *mainLayout = new QVBoxLayout(this);
        QLabel *label = new QLabel(this);

        label->setAlignment(Qt::AlignCenter);
        label->setText("SearchBar");

        mainLayout->addWidget(label);

        setLayout(mainLayout);
    }

    SearchBar::~SearchBar()
    {
    }
}
