#------------------------------------------------
### references {QWidgetListWidget}
#------------------------------------------------
### https://github.com/pierrebai/QWidgetListWidget
#------------------------------------------------
### main
#------------------------------------------------
int main(int argc, char** argv)
{
   return dak::ExampleApp::App(argc, argv);
}
#------------------------------------------------
### App
#------------------------------------------------
int App(int argc, char** argv)
{
    QScopedPointer<QApplication> app(new QApplication(argc, argv));

    # cree la fenere principale
    auto mainWindow = new MainWindow;

    mainWindow->resize(1000, 800);
    mainWindow->show();

    return app->exec();
}
#------------------------------------------------
### MainWindow -> QMainWindow
#------------------------------------------------
MainWindow::MainWindow()
{
    buildUI();
    fillUI();
    connectUI();
}
#------------------------------------------------
void MainWindow::buildUI()
{
    auto container = new QWidget;
    auto layout = new QHBoxLayout;
    container->setLayout(layout);

    _list1 = new QWidgetListWidget(nullptr, true, QBoxLayout::Direction::TopToBottom);
    //_list1 = new QWidgetListWidget(nullptr, true, QBoxLayout::Direction::LeftToRight);
    _list1->setAcceptDrops(true);
    _scrollList1 = new QWidgetScrollListWidget(_list1);
    layout->addWidget(_scrollList1);

    _list2 = new QWidgetListWidget(nullptr, true, QBoxLayout::Direction::TopToBottom);
    //_list2 = new QWidgetListWidget(nullptr, true, QBoxLayout::Direction::LeftToRight);
    _list2->setAcceptDrops(true);
    _scrollList2 = new QWidgetScrollListWidget(_list2);
    layout->addWidget(_scrollList2);

    setCentralWidget(container);
}
#------------------------------------------------
QWidgetListWidget* _list1 = nullptr;
QWidgetScrollListWidget* _scrollList1 = nullptr;
QWidgetListWidget* _list2 = nullptr;
QWidgetScrollListWidget* _scrollList2 = nullptr;
#------------------------------------------------
### QWidgetListWidget -> QFrame
#------------------------------------------------
QWidgetListWidget::QWidgetListWidget(ListModifiedCallbackFunction modifCallback, bool stretch, QBoxLayout::Direction dir, QWidget* parent)
: QFrame(parent), _modifCallback(modifCallback)
{
    setBackgroundRole(QPalette::ColorRole::Base);
    setSizePolicy(QSizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum));
    setMinimumSize(QSize(20, 20));
    if (!stretch)
        setFrameStyle(QFrame::Box);

    _layout = new QBoxLayout(dir);
    _layout->setSizeConstraint(QLayout::SetMinimumSize);
    _layout->setMargin(2);
    _layout->setSpacing(0);
    setLayout(_layout);

    _dropHere = new QLabel(QString("Drop items here."));
    _dropHere->setForegroundRole(QPalette::ColorRole::Mid);
    _dropHere->setVisible(false);
    _layout->addWidget(_dropHere);

    if (stretch)
        _layout->addStretch(0);
}
#------------------------------------------------
bool QWidgetListWidget::isVertical() const
{
    const auto dir = _layout->direction();
    return dir == QBoxLayout::Direction::TopToBottom || dir == QBoxLayout::Direction::BottomToTop;
}
#------------------------------------------------
using ListModifiedCallbackFunction = std::function<void(QWidgetListWidget * list)>;
#------------------------------------------------
ListModifiedCallbackFunction _modifCallback;
QBoxLayout* _layout = nullptr;
QLabel* _dropHere = nullptr;
#------------------------------------------------
### QWidgetScrollListWidget -> QScrollArea
#------------------------------------------------
QWidgetScrollListWidget::QWidgetScrollListWidget(QWidget* widget, QWidget* parent)
: QScrollArea(parent)
{
    setWidget(widget);

    bool isVertical = true;
    if (auto list = dynamic_cast<QWidgetListWidget*>(widget))
        if (!list->isVertical())
        isVertical = false;

    if (isVertical)
    {
        setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        setVerticalScrollBarPolicy(Qt::ScrollBarAsNeeded);
        setSizePolicy(QSizePolicy(QSizePolicy::Minimum, QSizePolicy::MinimumExpanding));
    }
    else
    {
        setHorizontalScrollBarPolicy(Qt::ScrollBarAsNeeded);
        setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        setSizePolicy(QSizePolicy(QSizePolicy::MinimumExpanding, QSizePolicy::Minimum));
    }

    # redimensionne le widget d'affichage si vrai
    setWidgetResizable(true);
    setSizeAdjustPolicy(SizeAdjustPolicy::AdjustToContents);
}
#------------------------------------------------
### end
#------------------------------------------------
