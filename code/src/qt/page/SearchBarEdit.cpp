#include "SearchBarEdit.hpp"
#include "popup/ListWidget.hpp"
#include "widget/SearchBarEdit.hpp"
#include <QFormLayout>
#include <QLineEdit>
#include <QListWidget>

namespace page
{
    SearchBarEdit::SearchBarEdit(QWidget *_parent)
        : QFrame(_parent)
    {
        QFormLayout *mainLayout = new QFormLayout(this);
        widget::SearchBarEdit *lineEidt = new widget::SearchBarEdit(this);

        lineEidt->popup()->list()->addItem("Un");
        lineEidt->popup()->list()->addItem("Deux");
        lineEidt->popup()->list()->addItem("Trois");
        lineEidt->popup()->list()->addItem("Quatre");

        mainLayout->addRow("Pays:", lineEidt);
        mainLayout->addRow("Ville:", new QLineEdit);
        mainLayout->addRow("Date de naissance:", new QLineEdit);

        setLayout(mainLayout);
    }

    SearchBarEdit::~SearchBarEdit()
    {
    }
}
