#------------------------------------------------
### references {pop-up-notification-about-wrong-input-in-qt}
#------------------------------------------------
### https://stackoverflow.com/questions/27025347/pop-up-notification-about-wrong-input-in-qt
#------------------------------------------------
### main
#------------------------------------------------
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Widget w;
    w.show();
    return a.exec();
}
#------------------------------------------------
### PopUpWidget -> QWidget
#------------------------------------------------
PopUpWidget::PopUpWidget(QWidget *parent) :
    QWidget(parent)
{
    resize(200, 50);

    setWindowFlags(Qt::FramelessWindowHint | Qt::Tool);
    setAttribute(Qt::WA_TranslucentBackground);
    setAttribute(Qt::WA_ShowWithoutActivating);

    animation.setTargetObject(this);
    animation.setPropertyName("popupOpacity");
    animation.setDuration(150);

    label.setAlignment(Qt::AlignHCenter | Qt::AlignVCenter);

    layout.addWidget(&label, 0, 0);
    setLayout(&layout);
}
#------------------------------------------------
QLabel label;
QGridLayout layout;
QPropertyAnimation animation;
float popupOpacity;
#------------------------------------------------
### Widget -> QWidget
#------------------------------------------------
Ui::Widget *ui;
PopUpWidget *popUp;
#------------------------------------------------
### end
#------------------------------------------------
