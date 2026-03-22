#include "SearchComboBox.hpp"
#include <QListWidget>

SearchComboBox::SearchComboBox(QWidget *_parent)
    : QComboBox(_parent)
{
    clearItems();
}

SearchComboBox::~SearchComboBox()
{
}

void SearchComboBox::setItems(const QStringList &items)
{
    for (const auto &item : items)
    {
        addItem(item);
    }
}

void SearchComboBox::clearItems()
{
    clear();
    addItem("Sélectionner un pays...");
}
