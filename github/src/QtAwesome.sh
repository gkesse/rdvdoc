#------------------------------------------------
### references {QtAwesome}
#------------------------------------------------
### https://github.com/gamecreature/QtAwesome
#------------------------------------------------
### main
#------------------------------------------------
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    # cree la fenetre principale
    MainWindow w;
    w.show();
    return app.exec();
}
#------------------------------------------------
### MainWindow -> QMainWindow
#------------------------------------------------
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    awesome = new fa::QtAwesome(this);
    awesome->initFontAwesome();

    ui->comboBox->addItem("Solid", fa::fa_solid);
    ui->comboBox->addItem("Brands", fa::fa_brands);
    ui->comboBox->addItem("Regular", fa::fa_regular);
//#if defined(FONT_AWESOME_PRO)
    ui->comboBox->addItem("Light", fa::fa_light);
    ui->comboBox->addItem("Thin", fa::fa_thin);
    // ui->comboBox->addItem("Duotone", fa::fa_duotone); // DEPRECATED
    ui->comboBox->addItem("Duotone Solid", fa::fa_duotone);
    ui->comboBox->addItem("Duotone Regular", fa::fa_duotone_regular);
    ui->comboBox->addItem("Duotone Light", fa::fa_duotone_light);
    ui->comboBox->addItem("Duotone Thin", fa::fa_duotone_thin);
    ui->comboBox->addItem("Sharp Solid", fa::fa_sharp_solid);
    ui->comboBox->addItem("Sharp Regular", fa::fa_sharp_regular);
    ui->comboBox->addItem("Sharp Light", fa::fa_sharp_light);
    ui->comboBox->addItem("Sharp Thin", fa::fa_sharp_thin);
    ui->comboBox->addItem("Sharp Duotone Solid", fa::fa_sharp_duotone_solid);
    ui->comboBox->addItem("Sharp Duotone Regular", fa::fa_sharp_duotone_regular);
    ui->comboBox->addItem("Sharp Duotone Light", fa::fa_sharp_duotone_light);
    ui->comboBox->addItem("Sharp Duotone Thin", fa::fa_sharp_duotone_thin);
//#endif

//#if defined(FONT_AWESOME_PRO_PLUS)
    ui->comboBox->addItem("Chisel Regular", fa::fa_chisel_regular);
    ui->comboBox->addItem("Etch Solid", fa::fa_etch_solid);
    ui->comboBox->addItem("Jelly Regular", fa::fa_jelly_regular);
    ui->comboBox->addItem("Jelly Duotone Regular", fa::fa_jelly_duotone_regular);
    ui->comboBox->addItem("Jelly Fill Regular", fa::fa_jelly_fill_regular);
    ui->comboBox->addItem("Notdog Duotone Solid", fa::fa_notdog_duotone_solid);
    ui->comboBox->addItem("Notdog Solid", fa::fa_notdog_solid);
    ui->comboBox->addItem("Slab Press Regular", fa::fa_slab_press_regular);
    ui->comboBox->addItem("Slab Regular", fa::fa_slab_regular);
    ui->comboBox->addItem("Thumbprint Light", fa::fa_thumbprint_light);
    ui->comboBox->addItem("Whiteboard Semibold", fa::fa_whiteboard_semibold);
//#endif

    // a simple beer button
    //=====================
    {
        QPushButton* beerButton = ui->beerButton;

        QVariantMap options;
        options.insert("anim", QVariant::fromValue(new fa::QtAwesomeAnimation(beerButton)));

        // below are the possible variation to show thi icon
         beerButton->setIcon(awesome->icon(fa::fa_solid, fa::fa_beer_mug_empty, options));
        // beerButton->setIcon(awesome->icon("fa-solid fa-beer-mug-empty", options));
        // beerButton->setIcon(awesome->icon("beer-mug-empty", options));
        // beerButton->setIcon(awesome->icon("solid beer-mug-empty", options));
    }

    // a simple checkbox button
    //=========================
    {
        QPushButton* toggleButton = ui->toggleButton;
        toggleButton->setCheckable(true);

        QVariantMap options;
        options.insert("color", QColor(Qt::yellow));
        options.insert("text-off", QString(QChar(static_cast<quint16>(fa::fa_square))));
        options.insert("color-off", QColor(Qt::darkBlue));
        toggleButton->setIcon( awesome->icon("fa_solid square-check", options));
    }

    QStandardItemModel* model = new QStandardItemModel(this);
    ui->listView->setModel(model);

    connect(ui->comboBox, SIGNAL(activated(int)), this, SLOT(styleChanged(int)));
    styleChanged(fa::fa_solid);
}
#------------------------------------------------
Ui::MainWindow *ui;
fa::QtAwesome* awesome;
#------------------------------------------------
### end
#------------------------------------------------
