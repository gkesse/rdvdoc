#pragma once

#include <QMainWindow>
#include <QDir>

class QIcon;
class QListWidget;
class QStackedWidget;

namespace app
{
    class MainWindow : public QMainWindow
    {
        Q_OBJECT

    public:
        inline static const QString PAGE_AUCUN = "PAGE_AUCUN";
        inline static const QString PAGE_LIST_WIDGET = "PAGE_LIST_WIDGET";
        inline static const QString PAGE_SEARCH_BAR = "PAGE_SEARCH_BAR";
        inline static const QString PAGE_SEARCH_BAR_EDIT = "PAGE_SEARCH_BAR_EDIT";

        using PageMap = QMap<QString, QWidget *>;

    public:
        explicit MainWindow(QWidget *_parent = Q_NULLPTR);
        ~MainWindow();
        const QString &getCurrentPage() const;

    public Q_SLOTS:
        void openPage(const QString &_page);

    private:
        void addPage(const QString &_page, QWidget *_widget);

    private Q_SLOTS:
        void onListWidget();
        void onSearchBar();
        void onSearchBarEdit();

    private:
        inline static const QString PARM_WINDOW_TITLE = "rdvQT - Applications Qt Widgets";
        inline static const int PARM_WINDOW_WIDTH = 640;
        inline static const int PARM_WINDOW_HEIGHT = 480;

    private:
        QListWidget *m_listWidget;
        PageMap m_pageMap;
        QStackedWidget *m_stackedWidget;
        QString m_currentPage = PAGE_SEARCH_BAR_EDIT;
    };
}
