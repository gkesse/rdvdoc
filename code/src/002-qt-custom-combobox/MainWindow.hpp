#pragma once

#include <QMainWindow>

class SearchComboBox;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *_parent = Q_NULLPTR);
    ~MainWindow();

private Q_SLOTS:
    void onAddData();
    void onClearData();

private:
    SearchComboBox *m_comboBox;
};
