#pragma once

#include <QComboBox>

class
    class SearchComboBox : public QComboBox
{
    Q_OBJECT

public:
    explicit SearchComboBox(QWidget *_parent = Q_NULLPTR);
    ~SearchComboBox();
    void setItems(const QStringList &items);
    void clearItems();
};
